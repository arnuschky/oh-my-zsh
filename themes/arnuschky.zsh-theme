

# local time, color coded by last return code
#time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
#time_disabled="%{$fg[green]%}%*%{$reset_color%}"
#time=$time_enabled

# user part, color coded by privileges
local user="%(!.%{$fg[blue]%}.%{$fg[blue]%})%n%{$reset_color%}"

# translate hostnames into shortened, colorcoded strings
#host_repr=('dieter-ws-a7n8x-arch' "%{$fg_bold[green]%}ws" 'dieter-p4sci-arch' "%{$fg_bold[blue]%}p4")

# hostname part.  compressed and colorcoded per host_repr array
# if not found, regular hostname in default color
#local host="@${host_repr[$(hostname)]:-$(hostname)}%{$reset_color%}"
local host="%{$fg[green]%}$(hostname)%{$reset_color%}"

# Compacted $PWD
#local pwd="%{$fg[blue]%}%c%{$reset_color%}"
local pwd="%{$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%} ("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}) %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔%{$reset_color%}"

#local unused=`git diff --quiet --ignore-submodules HEAD > /dev/null 2>&1`
#local git_return_code=$?

#local git_prompt=""
#if [[ ${git_return_code} -le 1 ]]; then
#  local git_branch="`git branch --no-color | grep \* | awk '{print $2}'`${BASE0}"
#  git_prompt="${ZSH_THEME_GIT_PROMPT_PREFIX}${git_branch}"
#  if [[ ${git_return_code} -eq 0 ]]; then
#    git_prompt="${git_prompt}${ZSH_THEME_GIT_PROMPT_CLEAN}"
#    echo "clean!"
#  else
#    git_prompt="${git_prompt}${ZSH_THEME_GIT_PROMPT_DIRTY}"
#    echo "dirty!"
#  fi
#  git_prompt="${git_prompt}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
#fi

#local leader="%{$fg_bold[red]%}#%{$reset_color%}"
local leader="%{$fg_bold[red]%}#%{$reset_color%}"


# main prompt
PROMPT='
$leader $host %{$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)${return_code}$(git_prompt_status)%{$reset_color%}
'

# right prompt
#RPROMPT='${user}${host}|${time}'


# Displays different symbols (simultaneously) depending on the current status of your git repo.
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭"
