# templates for justfiles
[[ -z $JUST_TEMPLATES_DIR ]] && JUST_TEMPLATES_DIR=${0:A:h}

# latex
function just-latex() {
    src="$JUST_TEMPLATES_DIR"/latex/justfile
    dst="$PWD"
    [[ -d "$@" ]] && dst="$@"
    [[ -f "$src" ]] && cp "$src" "$dst"
}
