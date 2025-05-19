package semantic;

import java.util.*;

public class SymbolTable {
    private List<Map<String, String>> scopes;
    private List<String> errors;

    public SymbolTable() {
        scopes = new ArrayList<>();
        scopes.add(new HashMap<>()); // Global scope
        errors = new ArrayList<>();
    }

    public void enterScope() {
        scopes.add(new HashMap<>());
    }

    public void exitScope() {
        if (scopes.size() > 1) {
            scopes.remove(scopes.size() - 1);
        }
    }

    public void put(String name, String type, int lineNumber) {
        if (name.equals("self")) {
            errors.add("Error at line " + lineNumber + ": Cannot bind 'self'");
            return;
        }
        Map<String, String> currentScope = scopes.get(scopes.size() - 1);
        if (currentScope.containsKey(name)) {
            errors.add("Error at line " + lineNumber + ": Variable " + name + " is redefined in the same scope");
        } else {
            currentScope.put(name, type);
        }
    }

    public String lookup(String name) {
        for (int i = scopes.size() - 1; i >= 0; i--) {
            if (scopes.get(i).containsKey(name)) {
                return scopes.get(i).get(name);
            }
        }
        return null;
    }

    public List<String> getErrors() {
        return errors;
    }
}