import os

def getDirectory(folder) :
    return os.path.join(script_dir, folder)

def getPath(folder, filename) :
    directory = getDirectory(folder)
    return os.path.join(directory, folder + filename + ".swift")

def createDirectory(folder) :
    module_directory = getDirectory(folder)
    if not os.path.exists(module_directory):
        os.makedirs(module_directory)

files = ["View", "Interactor", "Presenter", "Entity", "Router", "DataStore", "Protocols"]
script_dir = os.path.dirname(__file__)
module = raw_input()
createDirectory(module)

for filename in files :
    abs_template_path = getPath("MODULE", filename)
    abs_module_path = getPath(module, filename)
    with open(abs_template_path, "rt") as fin:
        with open(abs_module_path, "wt") as fout:
            for line in fin:
                fout.write(line.replace("MODULE", module))
