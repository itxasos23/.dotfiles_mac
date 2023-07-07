
# Path updates
fish_add_path ~/.cargo/bin
fish_add_path ~/.joplin-bin/bin
fish_add_path /usr/local/go/bin


# zoxide initialization
zoxide init fish | source

# rust cli tools
alias ls exa
alias batcat bat
alias yless "jless --yaml"

# msp cli tools
alias msp ./msp

# Alias to zr to root of the current git project
alias "zr" "z (git rev-parse --show-toplevel)"

# Alias for GitHub Cli
alias gh-pr-create-cloud "gh pr create --assignee @me --reviewer nentgroup/cloud"

# Alias for granted.dev /assume
alias assume="source /usr/local/bin/assume.fish"

# Alias for asciicast
alias asciicast2gif "agg"

# MSP variables
set -gx MSP_PROD_AMI_VERSION "ami-059c1eca882ab9d02" 

eval nvm use v18.16.0 &> /dev/null

if status is-interactive
  # Homebrew
  eval (/opt/homebrew/bin/brew shellenv)

  # Pyenv setup
  pyenv init - | source

end
rvm default

