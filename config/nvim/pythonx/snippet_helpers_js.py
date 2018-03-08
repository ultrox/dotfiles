from snippet_helpers import *
import re


def complete(t, opts):
    if t:
        opts= [match[len(t):] for match in opts if match.startswith(t)]
    if len(opts) == 1:
        return opts[0]
    return "(" + '|'.join(opts) + ')'

def js_comp_name(path, snip):
    filename = filename_without_extension(path)
    snip.rv = path_as_class_name(filename, separator="::")

# args are from t[1] actually stop ${1}
def propTypes(args, snip):
    count = 0
    snip.shift(1)
    for arg in args.split(","):
        regex = re.compile("[*&]*([a-zA-Z0-9_]+)")
        match = regex.match(arg.strip())
        if match:
            if count > 0: snip.rv += "\n"
            type = arg.split(":")
            if len(type) <= 1:
              type = "func"
            else:
              type = type[1]
            count += 1
            snip.rv += snip.mkline("{0}: PropTypes.{1}.isRequired,".format(match.group(1), type))

