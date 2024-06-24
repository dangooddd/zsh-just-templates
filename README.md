# zsh-just-templates
Zsh plugin for managing justfile templates, also contains
some templates.

Contains function for fast creating of justfiles templates.
Basically wrapper around cp command.

## Installation
### [antidote](https://github.com/mattmc3/antidote) plugin manager
Add dangooddd/zsh-just-templates in your .zsh_plugins.txt.
Manually:
```zsh
antidote install dangooddd/zsh-just-templates
```

### [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) framework
Clone this repo in Oh-my-zsh plugin directory:
```zsh
 git clone https://github.com/dangooddd/zsh-just-templates ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-just-templates
```
Then activate plugin in .zshrc:
```zsh
plugins=( ... zsh-just-templates )
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
foo contains bar/justfile, command:
```zsh
just-template bar
```
will copy ~/foo/bar/justfile into your $PWD without any issue.
