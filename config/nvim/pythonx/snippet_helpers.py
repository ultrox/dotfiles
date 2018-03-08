import re
# import inflection
# import os


def path_without_extension(path):
    return re.sub(r"(.*?)(_spec|_test)?\.(.*)$", "\\1", path)


def path_without_first_dir(path):
    if re.search(r"^(app|spec|lib/tasks|test|web)\/", path):
        return re.sub(r"^([a-z-]+\/){2}", "", path)
    else:
        return re.sub(r"^([a-z-]+\/){1}", "", path)
#
# def path_first_dir(path):
#     return re.sub(r"\/.*$", "", path)


def path_as_class_name(path, separator = "::"):
    path = re.sub(r"^_", "", path)
    return separator.join(list(map(lambda x: x.capitalize(), path.split("/"))))

# def current_project_name():
#     return re.sub(r".*\/([^/]*)$", "\\1", os.getcwd())


def filename_without_extension(path):
    return path.split("/")[-1].split(".")[0]

# def complete(t, opts):
#     if t:
#         opts= [m[len(t):] for m in opts if m.startswith(t) ]
#         if len(opts) == 1:
#             return opts[0]
#         return "(" + '|'.join(opts) + ')'
#
# def foo(t, opts,duo):
#     if t:
#         opts= [m[len(t):] for m in opts if m.startswith(t) ]
#         if len(opts) == 1:
#             return opts[0]
#         return "(" + '|'.join(opts) + ')'
