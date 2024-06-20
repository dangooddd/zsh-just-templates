# just-templates.zsh

# add default templates in JUST_TEMPLATES_DIRS variable
JUST_TEMPLATES_DIRS+="${0:A:h}"/templates

# $1 - name of template
# $2 - path to dst of justfile
function just-template() {
    local _template_dst=$2
    # if _template_dst is empty, copy to pwd
    [[ -z "$_template_dst" ]] && _template_dst=$PWD
    # exit if destination folder not valid
    if ! [[ -d "$_template_dst" ]]; then
        echo "just-template: \"$_template_dst\" is incorrect destination folder -> pass" 1>&2
        return 1
    fi

    # exit if justfile already exists
    if [[ -f "$_template_dst"/justfile ]]; then
        echo "just-template: found justfile in destination folder -> pass"
        return 0
    fi
    
    # search for template
    local _template_src
    for _path in $JUST_TEMPLATES_DIRS; do
        if [[ -f "$_path"/"$1"/justfile ]]; then
            _template_src="$_path"/"$1"
            break
        fi
    done
    # exit if template was not found
    if ! [[ -d "$_template_src" ]]; then
        echo "just-template: can't find template -> pass" 1>&2
        return 1
    fi

    # do the job
    cp "$_template_src"/justfile "$_template_dst"
}

# latex alias
alias just-latex="just-template latex"
