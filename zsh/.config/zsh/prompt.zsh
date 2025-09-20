# Exposes ANSI colours as env vars
autoload -U colors && colors

# Register the prompt update function to run before each prompt display
autoload -Uz add-zsh-hook
add-zsh-hook precmd update_prompt

function is_git_repo() {
  git rev-parse --is-inside-work-tree &>/dev/null
}

function is_git_dirty() {
  [[ -n $(git status --porcelain 2>/dev/null) ]]
}

function git_branch() {
  # Get current branch name or short commit hash if in detached HEAD state
  git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null
}

function git_prompt() {
  if is_git_repo; then
    local branch=$(git_branch)
    local prefix="%{$fg_bold[blue]%}git:(%{$fg[red]%}${branch}%{$fg[blue]%}) "
    
    echo "$prefix$(is_git_dirty && echo "%{$fg[yellow]%}✗ ")"
  fi
}

function build_prompt() {
  local exit_status="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})➜"
  local cwd="%{$fg[cyan]%}%c%{$reset_color%}"
  echo "$exit_status $cwd $(git_prompt)%{$reset_color%}"
}

function update_prompt() {
  PROMPT="$(build_prompt)"
}
