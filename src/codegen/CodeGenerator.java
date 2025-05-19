package codegen;

import intermediate.*;
import semantic.ClassTable;
import java.util.*;

public class CodeGenerator {
    private AssemblyProgram program;
    private List<Instruction> currentInstructions;
    private ClassTable classTable;
    private Map<String, String> registerMap; // TAC temp -> register
    private Set<String> freeRegisters;
    private int stackOffset;
    private String currentClass;
    private String currentMethod;

    public CodeGenerator(ClassTable classTable) {
        this.program = new AssemblyProgram();
        this.classTable = classTable;
        this.registerMap = new HashMap<>();
        this.freeRegisters = new LinkedHashSet<>(Arrays.asList(
                "$r2", "$r3", "$r4", "$r5", "$r6", "$r7", "$r8",
                "$r9", "$r10", "$r11", "$r12", "$r13", "$r14", "$r15"
        ));
        this.stackOffset = 0;
    }

    public AssemblyProgram generate(TACProgram tacProgram) {
        for (String className : tacProgram.getClassMethods().keySet()) {
            currentClass = className;
            Map<String, List<TACInstruction>> methods = tacProgram.getClassMethods().get(className);
            for (Map.Entry<String, List<TACInstruction>> entry : methods.entrySet()) {
                currentMethod = entry.getKey();
                currentInstructions = new ArrayList<>();
                generateMethod(entry.getValue());
                program.addMethod(className, currentMethod, currentInstructions);
            }
        }
        return program;
    }

    private void generateMethod(List<TACInstruction> tacInstructions) {
        // Function prologue
        currentInstructions.add(new PushInst("$fp", 0));
        currentInstructions.add(new MoveInst("$fp", "$sp", 0));
        stackOffset = 0;

        // Translate TAC to assembly
        for (TACInstruction tac : tacInstructions) {
            translateTAC(tac);
        }

        // Function epilogue (if no explicit return)
        currentInstructions.add(new MoveInst("$sp", "$fp", 0));
        currentInstructions.add(new PopInst("$fp", 0));
        currentInstructions.add(new ReturnInst(null, 0));
    }

    private String allocateRegister(String temp, int lineNumber) {
        if (registerMap.containsKey(temp)) {
            return registerMap.get(temp);
        }
        if (!freeRegisters.isEmpty()) {
            String reg = freeRegisters.iterator().next();
            freeRegisters.remove(reg);
            registerMap.put(temp, reg);
            return reg;
        }
        // Spill to stack
        stackOffset += 4;
        currentInstructions.add(new StoreInst(temp, stackOffset + "($fp)", lineNumber));
        return stackOffset + "($fp)";
    }

    private void freeRegister(String temp) {
        String reg = registerMap.get(temp);
        if (reg != null && reg.startsWith("$r")) {
            freeRegisters.add(reg);
            registerMap.remove(temp);
        }
    }

    private String getOperand(String operand, int lineNumber) {
        if (operand == null) {
            return "$r0"; // Null maps to zero register
        }
        if (operand.matches("t\\d+")) {
            return allocateRegister(operand, lineNumber);
        }
        if (operand.startsWith("\"") || operand.matches("\\d+")) {
            String tempReg = allocateRegister("const" + operand.hashCode(), lineNumber);
            currentInstructions.add(new MoveInst(tempReg, operand, lineNumber));
            return tempReg;
        }
        return operand; // Assume it's a variable or label
    }

    private void translateTAC(TACInstruction tac) {
        switch (tac.getOpcode()) {
            case ASSIGN:
                AssignTAC assign = (AssignTAC) tac;
                String assignDest = getOperand(assign.getResult(), tac.getLineNumber());
                String assignSrc = getOperand(assign.getSource(), tac.getLineNumber());
                currentInstructions.add(new MoveInst(assignDest, assignSrc, tac.getLineNumber()));
                break;

            case BINARY:
                BinaryTAC binary = (BinaryTAC) tac;
                String bDest = getOperand(binary.getResult(), tac.getLineNumber());
                String left = getOperand(binary.getLeft(), tac.getLineNumber());
                String right = getOperand(binary.getRight(), tac.getLineNumber());
                String opcode;
                switch (binary.getOperator()) {
                    case "+": opcode = "add"; break;
                    case "-": opcode = "sub"; break;
                    case "*": opcode = "mul"; break;
                    case "/": opcode = "div"; break;
                    case "<":
                    case "<=":
                    case "=":
                        currentInstructions.add(new BinaryInst("cmp", null, left, right, tac.getLineNumber()));
                        String trueLabel = "L" + UUID.randomUUID().toString().replace("-", "");
                        String endLabel = "L" + UUID.randomUUID().toString().replace("-", "");
                        // Set bDest to 0 (false) initially
                        currentInstructions.add(new MoveInst(bDest, "0", tac.getLineNumber()));
                        // Branch based on operator
                        String branchOpcode = binary.getOperator().equals("<") ? "blt" :
                                binary.getOperator().equals("<=") ? "ble" :
                                        "beq"; // for "="
                        currentInstructions.add(new BranchInst(branchOpcode, null, trueLabel, tac.getLineNumber()));
                        currentInstructions.add(new JumpInst(endLabel, tac.getLineNumber()));
                        currentInstructions.add(new LabelInst(trueLabel, tac.getLineNumber()));
                        currentInstructions.add(new MoveInst(bDest, "1", tac.getLineNumber()));
                        currentInstructions.add(new LabelInst(endLabel, tac.getLineNumber()));
                        return;
                    default:
                        throw new UnsupportedOperationException("Unsupported binary op: " + binary.getOperator());
                }
                currentInstructions.add(new BinaryInst(opcode, bDest, left, right, tac.getLineNumber()));
                break;

            case UNARY:
                UnaryTAC unary = (UnaryTAC) tac;
                String uDest = getOperand(unary.getResult(), tac.getLineNumber());
                String operand = getOperand(unary.getOperand(), tac.getLineNumber());
                String uOpcode;
                switch (unary.getOperator()) {
                    case "~": uOpcode = "neg"; break;
                    case "not": uOpcode = "not"; break;
                    case "isvoid": uOpcode = "isvoid"; break;
                    default:
                        throw new UnsupportedOperationException("Unsupported unary op: " + unary.getOperator());
                }
                currentInstructions.add(new UnaryInst(uOpcode, uDest, operand, tac.getLineNumber()));
                break;

            case LABEL:
                LabelTAC label = (LabelTAC) tac;
                currentInstructions.add(new LabelInst(label.getResult(), tac.getLineNumber()));
                break;

            case GOTO:
                GotoTAC gotoTac = (GotoTAC) tac;
                currentInstructions.add(new JumpInst(gotoTac.getResult(), tac.getLineNumber()));
                break;

            case IF:
                IfTAC ifTac = (IfTAC) tac;
                String cond = getOperand(ifTac.getCondition(), tac.getLineNumber());
                currentInstructions.add(new BranchInst("bne", cond, ifTac.getResult(), tac.getLineNumber()));
                break;

            case CALL:
                CallTAC call = (CallTAC) tac;
                List<String> argRegs = new ArrayList<>();
                for (String arg : call.getArgs()) {
                    String argReg = getOperand(arg, tac.getLineNumber());
                    argRegs.add(argReg);
                    currentInstructions.add(new PushInst(argReg, tac.getLineNumber()));
                }
                String callDest = call.getResult() != null ? getOperand(call.getResult(), tac.getLineNumber()) : null;
                String methodName = call.getMethod();
                currentInstructions.add(new CallInst(callDest, methodName, argRegs, tac.getLineNumber()));
                // Clean up stack
                if (!argRegs.isEmpty()) {
                    currentInstructions.add(new PopInst(null, tac.getLineNumber())); // Adjust $sp
                }
                break;

            case RETURN:
                ReturnTAC ret = (ReturnTAC) tac;
                currentInstructions.add(new MoveInst("$sp", "$fp", tac.getLineNumber()));
                currentInstructions.add(new PopInst("$fp", tac.getLineNumber()));
                currentInstructions.add(new ReturnInst(ret.getValue() != null ? getOperand(ret.getValue(), tac.getLineNumber()) : null, tac.getLineNumber()));
                break;

            case PARAM:
                ParamTAC param = (ParamTAC) tac;
                String paramReg = getOperand(param.getParam(), tac.getLineNumber());
                currentInstructions.add(new PopInst(paramReg, tac.getLineNumber())); // Pop from caller’s stack
                break;

            case LOAD:
                LoadTAC load = (LoadTAC) tac;
                String lDest = getOperand(load.getResult(), tac.getLineNumber());
                currentInstructions.add(new LoadInst(lDest, load.getAttribute() + "($fp)", tac.getLineNumber()));
                break;

            case STORE:
                StoreTAC store = (StoreTAC) tac;
                String storeSrc = getOperand(store.getSource(), tac.getLineNumber());
                currentInstructions.add(new StoreInst(storeSrc, store.getAttribute() + "($fp)", tac.getLineNumber()));
                break;

            default:
                throw new UnsupportedOperationException("Unsupported TAC opcode: " + tac.getOpcode());
        }
    }
}