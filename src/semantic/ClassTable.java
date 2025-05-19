package semantic;

import ast.*;
import java.util.*;

public class ClassTable {
    private Map<String, ClassNode> classes;
    private Map<String, String> inheritance;
    private Map<String, List<MethodSignature>> methods;
    private Map<String, List<AttributeSignature>> attributes;
    private List<String> errors;
    private static final boolean ALLOW_OBJECT_REDEFINITION = false;

    public class MethodSignature {
        public String name;
        public List<String> paramTypes;
        public String returnType;
        public int lineNumber;

        public MethodSignature(String name, List<String> paramTypes, String returnType, int lineNumber) {
            this.name = name;
            this.paramTypes = paramTypes;
            this.returnType = returnType;
            this.lineNumber = lineNumber;
        }
    }

    public class AttributeSignature {
        public String name;
        public String type;
        public int lineNumber;

        public AttributeSignature(String name, String type, int lineNumber) {
            this.name = name;
            this.type = type;
            this.lineNumber = lineNumber;
        }
    }

    public ClassTable() {
        classes = new HashMap<>();
        inheritance = new HashMap<>();
        methods = new HashMap<>();
        attributes = new HashMap<>();
        errors = new ArrayList<>();
        addBuiltInClasses();
    }

    private void addBuiltInClasses() {
        classes.put("Object", new ClassNode("Object", null, new ArrayList<>(), 0));
        methods.put("Object", new ArrayList<>());
        methods.get("Object").add(new MethodSignature("abort", new ArrayList<>(), "Object", 0));
        methods.get("Object").add(new MethodSignature("type_name", new ArrayList<>(), "String", 0));
        methods.get("Object").add(new MethodSignature("copy", new ArrayList<>(), "SELF_TYPE", 0));
        attributes.put("Object", new ArrayList<>());

        classes.put("IO", new ClassNode("IO", "Object", new ArrayList<>(), 0));
        inheritance.put("IO", "Object");
        methods.put("IO", new ArrayList<>());
        methods.get("IO").add(new MethodSignature("out_string", Arrays.asList("String"), "SELF_TYPE", 0));
        methods.get("IO").add(new MethodSignature("out_int", Arrays.asList("Int"), "SELF_TYPE", 0));
        methods.get("IO").add(new MethodSignature("in_string", new ArrayList<>(), "String", 0));
        methods.get("IO").add(new MethodSignature("in_int", new ArrayList<>(), "Int", 0));
        attributes.put("IO", new ArrayList<>());

        classes.put("Int", new ClassNode("Int", "Object", new ArrayList<>(), 0));
        inheritance.put("Int", "Object");
        methods.put("Int", new ArrayList<>());
        attributes.put("Int", new ArrayList<>());

        classes.put("String", new ClassNode("String", "Object", new ArrayList<>(), 0));
        inheritance.put("String", "Object");
        methods.put("String", new ArrayList<>());
        methods.get("String").add(new MethodSignature("length", new ArrayList<>(), "Int", 0));
        methods.get("String").add(new MethodSignature("concat", Arrays.asList("String"), "String", 0));
        methods.get("String").add(new MethodSignature("substr", Arrays.asList("Int", "Int"), "String", 0));
        attributes.put("String", new ArrayList<>());

        classes.put("Bool", new ClassNode("Bool", "Object", new ArrayList<>(), 0));
        inheritance.put("Bool", "Object");
        methods.put("Bool", new ArrayList<>());
        attributes.put("Bool", new ArrayList<>());
    }

    public void addClass(ClassNode node) {
        if (classes.containsKey(node.name)) {
            if (!node.name.equals("Object") || !ALLOW_OBJECT_REDEFINITION) {
                errors.add("Error at line " + node.lineNumber + ": Class " + node.name + " is redefined");
                return;
            }
        }
        if (node.name.equals("IO") || node.name.equals("Int") || node.name.equals("String") || node.name.equals("Bool")) {
            errors.add("Error at line " + node.lineNumber + ": Cannot redefine built-in class " + node.name);
            return;
        }
        classes.put(node.name, node);
        String parent = node.parent != null ? node.parent : "Object";
        if (!node.name.equals("Object")) {
            inheritance.put(node.name, parent);
        }
        methods.put(node.name, new ArrayList<>());
        attributes.put(node.name, new ArrayList<>());
        for (FeatureNode feature : node.features) {
            if (feature instanceof MethodNode) {
                MethodNode method = (MethodNode) feature;
                List<String> paramTypes = new ArrayList<>();
                for (FormalNode formal : method.formals) {
                    paramTypes.add(formal.type);
                }
                methods.get(node.name).add(new MethodSignature(method.name, paramTypes, method.returnType, method.lineNumber));
            } else if (feature instanceof AttributeNode) {
                AttributeNode attr = (AttributeNode) feature;
                attributes.get(node.name).add(new AttributeSignature(attr.name, attr.type, attr.lineNumber));
            }
        }
    }

    public void checkInheritance() {
//        if (!classes.containsKey("Main")) {
//            errors.add("Error: Program must define a Main class");
//        } else {
//            boolean hasMain = false;
//            for (MethodSignature method : methods.getOrDefault("Main", new ArrayList<>())) {
//                if (method.name.equals("main") && method.paramTypes.isEmpty() && method.returnType.equals("Object")) {
//                    hasMain = true;
//                    break;
//                }
//            }
//            if (!hasMain) {
//                errors.add("Error: Main class must define a main method with no parameters and Object return type");
//            }
//        }

        for (String className : inheritance.keySet()) {
            String parent = inheritance.get(className);
            if (!classes.containsKey(parent)) {
                errors.add("Error at line " + classes.get(className).lineNumber + ": Class " + className + " inherits from undefined class " + parent);
            } else if (parent.equals("Int") || parent.equals("Bool") || parent.equals("String")) {
                errors.add("Error at line " + classes.get(className).lineNumber + ": Class " + className + " cannot inherit from " + parent);
            }
        }

        for (String className : classes.keySet()) {
            Set<String> visited = new HashSet<>();
            String current = className;
            while (current != null) {
                if (visited.contains(current)) {
                    errors.add("Error: Inheritance cycle detected involving " + className);
                    break;
                }
                visited.add(current);
                current = inheritance.get(current);
            }
        }
    }

    public void checkFeatureRedefinition() {
        for (String className : classes.keySet()) {
            Set<String> definedAttrs = new HashSet<>();
            String current = className;
            while (current != null) {
                for (AttributeSignature attr : attributes.getOrDefault(current, new ArrayList<>())) {
                    if (!definedAttrs.add(attr.name)) {
                        errors.add("Error at line " + attr.lineNumber + ": Attribute " + attr.name + " is redefined in class " + className);
                    }
                }
                current = inheritance.get(current);
            }

            Map<String, MethodSignature> definedMethods = new HashMap<>();
            current = className;
            while (current != null) {
                for (MethodSignature method : methods.getOrDefault(current, new ArrayList<>())) {
                    if (definedMethods.containsKey(method.name)) {
                        MethodSignature parentMethod = definedMethods.get(method.name);
                        if (method.paramTypes.size() != parentMethod.paramTypes.size() ||
                                !method.paramTypes.equals(parentMethod.paramTypes) ||
                                !method.returnType.equals(parentMethod.returnType)) {
                            errors.add("Error at line " + method.lineNumber + ": Method " + method.name + " in class " + className + " does not match inherited signature");
                        }
                    }
                    definedMethods.put(method.name, method);
                }
                current = inheritance.get(current);
            }
        }
    }

    public boolean isValidType(String type) {
        return type != null && (type.equals("SELF_TYPE") || classes.containsKey(type));
    }

    public boolean isClassType(String type) {
        return type != null && !type.equals("Int") && !type.equals("String") && !type.equals("Bool");
    }

    public boolean conforms(String type, String expected, String currentClass) {
        if (type == null) {
            return isClassType(expected);
        }
        if (expected == null) {
            return false;
        }
        if (type.equals("SELF_TYPE")) {
            type = currentClass;
        }
        if (expected.equals("SELF_TYPE")) {
            expected = currentClass;
        }
        if (type.equals(expected)) {
            return true;
        }
        String current = type;
        while (current != null) {
            if (current.equals(expected)) {
                return true;
            }
            current = inheritance.get(current);
        }
        return false;
    }

    public String join(String type1, String type2, String currentClass) {
        if (type1 == null || type2 == null) {
            return "Object";
        }
        if (type1.equals("SELF_TYPE")) {
            type1 = currentClass;
        }
        if (type2.equals("SELF_TYPE")) {
            type2 = currentClass;
        }
        if (type1.equals(type2)) {
            return type1;
        }
        List<String> ancestors1 = new ArrayList<>();
        String current = type1;
        while (current != null) {
            ancestors1.add(current);
            current = inheritance.get(current);
        }
        current = type2;
        while (current != null) {
            if (ancestors1.contains(current)) {
                return current;
            }
            current = inheritance.get(current);
        }
        return "Object";
    }

    public MethodSignature findMethod(String className, String methodName) {
        String current = className;
        while (current != null) {
            for (MethodSignature method : methods.getOrDefault(current, new ArrayList<>())) {
                if (method.name.equals(methodName)) {
                    return method;
                }
            }
            current = inheritance.get(current);
        }
        return null;
    }

    public AttributeSignature findAttribute(String className, String attrName) {
        String current = className;
        while (current != null) {
            for (AttributeSignature attr : attributes.getOrDefault(current, new ArrayList<>())) {
                if (attr.name.equals(attrName)) {
                    return attr;
                }
            }
            current = inheritance.get(current);
        }
        return null;
    }

    public List<String> getErrors() {
        return errors;
    }

    public ClassNode getClass(String name) {
        return classes.get(name);
    }

    public Set<String> getClassNames() {
        return classes.keySet();
    }

    public String getParent(String className) {
        return inheritance.get(className);
    }

    public List<MethodSignature> getMethods(String className) {
        List<MethodSignature> allMethods = new ArrayList<>();
        String current = className;
        while (current != null) {
            allMethods.addAll(methods.getOrDefault(current, new ArrayList<>()));
            current = inheritance.get(current);
        }
        return allMethods;
    }
}