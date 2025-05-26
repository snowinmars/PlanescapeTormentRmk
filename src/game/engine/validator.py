import ast
import os
import sys
import renpy.loader

# does not work, but seems interesting
# the point is to detect non-imported modules
# by default RenPy fails in runtime
# but I want to fails at a build time
class ImportValidator(ast.NodeVisitor):
    def __init__(self):
        self.used_names = set()
        self.defined_names = set()
        self.imported_modules = set()

    def visit_Call(self, node):
        if isinstance(node.func, ast.Name):
            self.used_names.add(node.func.id)
        elif isinstance(node.func, ast.Attribute):
            # Handle module.function calls
            if isinstance(node.func.value, ast.Name):
                module = node.func.value.id
                func = node.func.attr
                self.used_names.add(f"{module}.{func}")
        super().generic_visit(node)

    def visit_Import(self, node):
        for alias in node.names:
            self.defined_names.add(alias.name)
            self.imported_modules.add(alias.name)
            if alias.asname:
                self.defined_names.add(alias.asname)

    def visit_ImportFrom(self, node):
        module = node.module
        self.imported_modules.add(module)
        for alias in node.names:
            full_name = f"{module}.{alias.name}"
            self.defined_names.add(full_name)
            if alias.asname:
                self.defined_names.add(alias.asname)
            else:
                self.defined_names.add(alias.name)

def validate_imports():
    validator = ImportValidator()

    # Extended whitelist
    whitelist = {
        # Ren'Py built-ins
        'renpy', 'config', 'store', 'persistent',
        # Screen language
        'ui', 'say', 'show', 'hide', 'jump', 'call',
        # Displayables
        'Character', 'Transform', 'Animation', 'DynamicDisplayable',
        'Image', 'Solid', 'Text', 'Null', 'Fixed', 'VBox', 'HBox',
        # Python built-ins
        'len', 'str', 'int', 'float', 'list', 'dict', 'set'
    }

    def scan_file(filepath):
        try:
            with open(filepath, "r", encoding="utf-8") as f:
                tree = ast.parse(f.read(), filename=os.path.basename(filepath))
                validator.visit(tree)
        except Exception as e:
            print(f"[Import Check] Warning: Could not parse {filepath}: {str(e)}")

    # 1. Scan all .rpy files
    for fn, dir in renpy.loader.listdirfiles():
        if fn.endswith((".rpy", ".rpym")):
            scan_file(os.path.join(dir, fn))

    # 2. Scan linked .py files in game directory
    game_dir = renpy.config.gamedir
    for root, _, files in os.walk(game_dir):
        for file in files:
            if file.endswith(".py"):
                scan_file(os.path.join(root, file))

    # 3. Verify all imported modules exist
    for module in validator.imported_modules:
        try:
            __import__(module)
        except ImportError:
            raise Exception(f"Missing required module: {module}")

    # Check for undefined names
    undefined = (validator.used_names - validator.defined_names) - whitelist

    if undefined:
        error_msg = "Missing imports detected:\n"
        error_msg += "\n".join(f"- {name}" for name in sorted(undefined))
        error_msg += "\n\nEither import these properly or add them to the whitelist."
        raise Exception(error_msg)

# Run validation early in startup
validate_imports()