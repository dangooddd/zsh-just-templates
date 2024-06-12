# templates for justfiles
[[ -z $JUST_TEMPLATES_DIR ]] && JUST_TEMPLATES_DIR=${0:A:h}

function just-template() {
    src="$1"/justfile
    dst="$2"
    [[ -z $dst ]] && dst=$PWD

    if ! [[ -d "$dst" ]]; then
        echo "$dst: incorrect dst directory"
        return 0
    fi 

    if ! [[ -f "$src" ]]; then 
        echo "$src: incorrect src value"
        return 0 
    fi

    cp "$src" "$dst"
}

# latex
function just-latex() {
    src="$JUST_TEMPLATES_DIR"/templates/latex/
    dst="$@"
    just-template "$src" "$dst"
}
