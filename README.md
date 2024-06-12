# just-templates
Useful justfile templates repository.

Contains functions for fast creating of justfiles.
Basically wrapper around cp command)

## Confuguration
For change directory that contains language/justfile directories
to custom set JUST_TEMPLATES_DIR

## Usage
For all templates in this repo:
```zsh
just-language /destination/path
```
For any other templates (function will search justfile in source path):
```zsh
just-template /source/path /destination/path
```
