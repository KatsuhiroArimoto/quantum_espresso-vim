#!/usr/bin/env python

"""
Description:
    Create syntax-highlighting command from the document of pw.x (text format).

Usage:
    create_syntax.py <input_doc_txt> <syntax_vim>
    create_syntax.py [-h | --help]

Options:
    -h --help   Show this help screen.

Author:
    Katsuhiro Arimoto
"""

from pathlib import Path
from datetime import datetime


def main():
    from docopt import docopt

    args = docopt(__doc__)
    input_doc_txt = Path(args["<input_doc_txt>"])
    syn_vim = Path(args["<syntax_vim>"])
    with open(input_doc_txt) as fp:
        lines = fp.readlines()
    nl_val_typ = get_namelist_type_type_dict(lines)
    syn_vim_lines = get_syntax_vim(nl_val_typ)
    with open(syn_vim, mode="w") as fp:
        fp.writelines(syn_vim_lines)


def get_namelist_type_type_dict(lines: list[str]) -> dict[str, dict[str, dict[str, str]]]:
    nl_val_typ = {}
    for i, line in enumerate(lines):
        if "NAMELIST:" in line:
            namelist = line.split()[-1].removeprefix("&").removesuffix("\n").lower()
            nl_val_typ[namelist] = {}
        if "Variable:" in line:
            variable = line.split()[1:]
            variable = " ".join(variable).removesuffix("\n")
            type_ = lines[i + 2].split()[-1].removesuffix("\n").lower()
            regular = True
            if "(m,ispin,ityp)" in variable:
                variable = variable.split(" ")[0].removesuffix("(m,ispin,ityp),")
                variable = variable + "(\([1-9][0-9]*,*[1-9][0-9]*,*[1-9][0-9]*\))"
            elif "(ityp,i)" in variable:
                variable = variable.split(" ")[0].removesuffix("(ityp,i),")
                variable = variable + "(\([1-9][0-9]*,*[1-3]\))"
            elif "(i)" in variable:
                if "i=1,6" in variable:
                    pattern = "(\([1-6]\))"
                elif "i=1,3" in variable:
                    pattern = "(\([1-3]\))"
                else:
                    pattern = "(\([1-9][0-9]*\))"
                variable = variable.split(" ")[0].removesuffix("(i),")
                variable = variable + pattern
            elif "," in variable:
                variable = " ".join([v.strip() for v in variable.split(",")])
                regular = False
            else:
                regular = False
            if namelist is not None:
                nl_val_typ[namelist][variable] = {"type": type_, "regular": regular}
        if "END OF NAMELIST" in line:
            namelist = None
    return nl_val_typ


def get_syntax_vim(nl_val_typ: dict[str, dict[str, dict[str, str]]]) -> list[str]:
    date = datetime.now().strftime('%Y %b %d')
    lines = f"""" Vim syntax file
" Language: Quantum Espresso
" Maintainer: Leandro Seixas Rocha <seixasle@gmail.com>, Katsuhiro Arimoto <75106395+KatsuhiroArimoto@users.noreply.github.com>
" Last Change: {date}

if exists('b:current_syntax')
    finish
endif

" Comment
syntax keyword espressoTODO contained TODO FIXME XXX NOTE
syntax match espressoComment '!.*$'

" Integer with +,- or nothing in front
syntax match espressoNumber '\d\+'
syntax match espressoNumber '[-+]\d\+'

" Floating number
syntax match espressoNumber '\d\+.\d*'
syntax match espressoNumber '[-+]\d\+.\d*'
syntax match espressoNumber '[-+]\=\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match espressoNumber '\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match espressoNumber '[-+]\=\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'
syntax match espressoNumber '\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'

" String
syntax region espressoString start="'" end="'"

" Boolean value (.true. /.false.)
syntax match espressoBoolean '\.[tT][rR][uU][eE]\.'
syntax match espressoBoolean '\.[fF][aA][lL][sS][eE]\.'
""".splitlines(keepends=True)
    lines.append('\n" Name Descriptor\n')
    namelists = [namelist.upper() for namelist in nl_val_typ.keys()]
    lines.append('syntax keyword espressoNameDesc ' + ' '.join(namelists) + '\n\n')
    for namelist in nl_val_typ.keys():
        lines_nl = get_syntax_vim_for_namelist(namelist, nl_val_typ[namelist])
        lines += lines_nl

    lines += """syntax region espressoNamelist start='&' end='/' fold transparent contains=espressoNumber,espressoKey,espressoString,espressoBoolean,espressoComment

let b:current_syntax = 'espresso'

hi def link espressoNamelist    PreProc
hi def link espressoKey         Statement
hi def link espressoNumber      Constant
hi def link espressoString      Type
hi def link espressoBoolean     Special
hi def link espressoComment     Comment
""".splitlines(keepends=True)
    return lines


def get_syntax_vim_for_namelist(namelist: str, val_type: dict[str, dict[str, str]]) -> list[str]:
    lines = [f'" {namelist.upper()} namelist\n']
    regular2declare = {True: "match", False: "keyword"}
    type2nextgroup = {
        "character": "espressoString",
        "integer": "espressoNumber",
        "real": "espressoNumber",
        "string": "espressoString",
        "logical": "espressoBoolean",
    }
    for value, type_ in val_type.items():
        if type_["regular"]:
            value = "'" + value + "'"
        line = f"syntax {regular2declare[type_['regular']]} espressoKey {value} nextgroup={type2nextgroup[type_['type']]}\n"
        lines.append(line)
    lines.append("\n")
    return lines


if __name__ == "__main__":
    main()
