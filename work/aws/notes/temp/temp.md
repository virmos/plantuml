https://stackoverflow.com/questions/41941079/what-is-the-difference-between-sys-meta-path-and-sys-path-hooks-importer-obj
https://github.com/0cjs/sedoc/blob/master/lang/python/importers.md
https://bayesianbrad.github.io/posts/2017_loader-finder-python.html

# ***Import***
## Definitions
Importlib
    Modules: a.py
    Packages
        modules that contain __path__
        - regular package: a/ +  __init__.py
        - namespace package: a/ without __init__.py

## Cases
### __import__
package/import a/b ->  import package.a.b
    - lookup sys.meta_path
        returns finder PathFinder.find_spec a
### finder: find_spec(fullname, path)
spec_from_file_location(name, location, loader)
    1. sys.meta_path -> PathFinder
    PathFinder.find_spec
        - fullname="package.a.b"
        + path = package.__path__
        + path = sys.path
        - file_finder = self.path_hooks(path)
        - cache file_finder in sys.path_importer_cache
    2. sys.path_hooks -> FileFinder
    FileFinder.find_spec
        - spec_from_file_location
        return loader ModuleSpec(fullpath)loader / ModuleNotFoundError
### loader: create_module(spec)
module_from_spec(spec, loader)
    module = spec.loader.create_module(loader.data)
    sys.modules[spec.name] = module
    return sys.modules[spec.name]

## Summary
spec = importlib.util.spec_from_file_location(module_name, file_path)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
sys.modules[module_name] = module   # Optional

python …/foo.py:
    Loads file …/foo.py from whatever path was specified.
    The directory in which foo.py lives will be added tosys.path.
    sys.path will not include the current working directory.
    __spec__ will be None.
python -m bar where bar is not a package:
    Loads file bar.py from the Python path.
    sys.path will include the current working directory.
    __spec__.name will be bar.
python -m baz where baz is a package:
    Loads file baz/__main__.py from the Python path or prints
    python: No module named baz.__main__; 'baz' is a package and cannot be directly executed.
    sys.path will include the current working directory.
    __spec__.name will be baz.

## Code
```
    import json
    import importlib.abc
    import importlib.util
    import sys

    class JSONFileFinder(importlib.abc.MetaPathFinder):
        def find_spec(self, fullname, path, target=None):
            if path is None:
                path = sys.path

            module_path = fullname + ".json"
            
            for dir_path in path:
                json_file_path = dir_path + "/" + module_path  # Assuming JSON files are in the same directory as Python files
                
                try:
                    with open(json_file_path, "r") as json_file:
                        json_data = json.load(json_file)
                        module_spec = importlib.util.spec_from_loader(fullname, loader=None, origin=json_file_path)
                        module_spec.loader = JSONLoader(json_data)
                        return module_spec
                except FileNotFoundError:
                    pass
            
            return None

    class JSONLoader(importlib.abc.Loader):
        def __init__(self, json_data):
            self.json_data = json_data

        def create_module(self, spec):
            module = type(spec.name, (object,), {})
            for key, value in self.json_data.items():
                setattr(module, key, value)
            return module

        def exec_module(self, module):
            pass  # Nothing to execute since data is loaded directly into module

    # Register the custom finder
    sys.meta_path.append(JSONFileFinder())

    # Usage example
    import data  # Assuming there is a config.json file in the current directory
    print(sys.modules)
    print(data.api_key)  # Accessing JSON data as if it were Python attributes
```

