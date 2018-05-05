import os

files = ["View", "Interactor", "Presenter", "Entity", "Router", "DataStore", "Protocols"]
script_dir = os.path.dirname(__file__)
module = raw_input()

def getAbsPath(module, filename) :
    templatePath = "MODULE/MODULE" + filename + ".swift"
    modulePath = module + filename + ".swift"
    abs_template_path = os.path.join(script_dir, templatePath)
    abs_module_path = os.path.join(script_dir, modulePath)
    return (abs_template_path, abs_module_path)

for filename in files :
    abs_template_path, abs_module_path = getAbsPath(module, filename)
    with open(abs_template_path, "rt") as fin:
        with open(abs_module_path, "wt") as fout:
            for line in fin:
                fout.write(line.replace("MODULE", module))
