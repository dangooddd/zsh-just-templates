# just-templates
Useful justfile templates repository.

Contains function for fast creating of justfiles templates.
Basically wrapper around cp command.

## Installation
### antidote plugin manager
Add dangooddd/just-templates in your .zsh_plugins.txt.
Alternatively:
```zsh
antidote install dangooddd/just-templates
```

## Usage
For all templates in this repo:
```zsh
just-"name" /destination/path
```
Example:
```zsh
just-latex ./
```
For any other templates found in JUST_TEMPLATES_DIRS:
```zsh
just-template template_name /destination/path
```

## Confuguration
If you want just-template function to search custom templates, set JUST_TEMPLATES_DIRS variable. 
After this, command: 
```zsh
just-template template_name
```
will search "template_name" directory in all
directories that you specified in JUST_TEMPLATES_DIRS.

For example, if JUST_TEMPLATES_DIRS=(~/foo), and
foo contains bar/justfile
```zsh
just-template bar
```
will copy ~/foo/bar/justfile into your $PWD without any issue.
