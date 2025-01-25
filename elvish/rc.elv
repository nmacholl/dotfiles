### OPTIONS
# GNU Readline Shortcuts
use readline-binding

### Environemnt (mostly PATH)
# Homebrew
var HOMEBREW_PATH = /opt/homebrew/bin

## Docker
var DOCKER_PATH = /Applications/Docker.app/Contents/Resources/bin

## LLVM
var LLVM_PATH = /opt/homebrew/opt/llvm/bin

## MYSQL
var MYSQL_PATH = /opt/homebrew/opt/mysql@8.4/bin

## Locals
var LOCAL_PATH = $E:HOME/.local/bin

# Editor
set E:EDITOR = hx

# Colorful Commands
fn ls {|@a| e:ls --color $@a }
fn grep {|@a| e:grep --color=always $@a }
fn egrep {|@a| e:egrep --color-always $@a }
fn fgrep {|@a| e:fgrep --color-always $@a }

# Pyenv (DOES NOT WORK)
set E:PYENV_SHELL = elvish
var PYENV_SHIMS = $E:HOME/.pyenv/shims

# Set paths
set paths = [
  $PYENV_SHIMS
  $HOMEBREW_PATH
  $DOCKER_PATH
  $LLVM_PATH
  $MYSQL_PATH
  $LOCAL_PATH
  $@paths
]

### Shell Integrations 

# Carapace
# Provides shell command completions
set-env CARAPACE_BRIDGES 'zsh,bash' # optional
eval (carapace _carapace|slurp)

# Starship
# A nice prompt that includes git information
eval (/opt/homebrew/bin/starship init elvish --print-full-init | slurp)

# Terminal Multiplex
# Essential multitasking
if (==s $E:TMUX "") {
  tmux new-session -A -s "local"
}
