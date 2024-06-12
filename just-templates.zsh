# templates for justfiles
[[ -z $JUST_TEMPLATES_DIR ]] && JUST_TEMPLATES_DIR=${0:A:h}

# latex
function just-latex() {
    src="$JUST_TEMPLATES_DIR"/latex/justfile
    dst="$PWD"

    if ! [[ -d "@" ]]; then
        echo "$@: incorrect directory"
        exit 0
    fi 

    if ! [[ -f "$src" ]]; then 
        echo "incorrect JUST_TEMPLATES_DIR value"
        exit 0 
    fi

    cp "$src" "$dst"
}
