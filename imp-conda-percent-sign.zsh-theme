# user, host, full path, and battery status
# on two lines for easier vgrepping

function hg_prompt_info {
    hg prompt --angle-brackets "\
<hg:%{$fg[magenta]%}<branch>%{$reset_color%}><:%{$fg[magenta]%}<bookmark>%{$reset_color%}>\
</%{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[red]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} +"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✱"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%} ✈"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"

function mygit() {
  if [[ "$(git config --get oh-my-zsh.hide-status)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    echo " %B[${ref#refs/heads/}$(git_prompt_short_sha)$( git_prompt_status )%{$reset_color%}%b%B]%b "
  fi
}

# Function to retrieve the Python version info
# See https://github.com/lyytaw/taw-ys.zsh-theme. Copied with trivial modification.
conda_python_version_info() {
  if command -v python > /dev/null 2>&1; then
    PYTHON_VERSION="$(python -V 2>&1)"
    PYTHON_VERSION=${PYTHON_VERSION/Python /Python}
    PYTHON_VERSION=${PYTHON_VERSION/ */}
    CONDA_DEFAULT_ENV_NAME=''
    if [ -n "$CONDA_DEFAULT_ENV" ]; then
      CONDA_DEFAULT_ENV_NAME="$CONDA_DEFAULT_ENV::"
    fi
    echo -n "%{$fg[yellow]%}(${CONDA_DEFAULT_ENV_NAME}${PYTHON_VERSION})%{$reset_color%}"
  fi
}

function retcode() {}

# alternate prompt with git & hg
# Use %% to print a literal one in zsh
# 20221011: Moves the conda::python prompt to right instead of at the beginning
# with function conda_python_version_info().
PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}\e[0;34m%}%B@%b%{\e[0m%}%{\e[0;36m%}%B%m%b%{\e[0;34m%}%B][%b%{\e[0;34m%}%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%}$(mygit)$(hg_prompt_info)$(conda_python_version_info)
%{\e[0;34m%}%B└─%%%b'
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
