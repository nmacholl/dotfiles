### OPTIONS
use readline-binding
use platform

### Environment (mostly PATH)
var LOCAL_PATH = $E:HOME/.local/bin

# Pyenv
set E:PYENV_SHELL = elvish
var PYENV_SHIMS = $E:HOME/.pyenv/shims

# Platform Specific
if (==s $platform:os "darwin") {
  # Homebrew
  var HOMEBREW_PATH = /opt/homebrew/bin
  var DOCKER_PATH = /Applications/Docker.app/Contents/Resources/bin
  var LLVM_PATH = /opt/homebrew/opt/llvm/bin

  set paths = [
    $PYENV_SHIMS
    $HOMEBREW_PATH
    $DOCKER_PATH
    $LLVM_PATH
    $LOCAL_PATH
    $@paths
  ]
} else {
  set paths = [
    $LOCAL_PATH
    $@paths    
  ] 
}

# Editor
set E:EDITOR = hx

# Colorful Commands
fn ls {|@a| e:ls --color $@a }
fn grep {|@a| e:grep --color=always $@a }
fn egrep {|@a| e:egrep --color-always $@a }
fn fgrep {|@a| e:fgrep --color-always $@a }

### Shell Integrations 

# Carapace
# Provides shell command completions
set-env CARAPACE_BRIDGES 'zsh,bash' # optional
eval (carapace _carapace|slurp)

# Starship
# A nice prompt that includes git information
if (==s $platform:os "darwin") {
  eval (/opt/homebrew/bin/starship init elvish --print-full-init | slurp)
} else {
  eval (/usr/local/bin/starship init elvish --print-full-init | slurp)
}

# Terminal Multiplex
# Essential multitasking
if (==s $E:TMUX "") {
  tmux new-session -A -s "local"
}
