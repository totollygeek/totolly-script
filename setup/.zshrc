# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/totollygeek/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize docker docker-compose dotnet zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# My aliases
alias cls="clear"
alias up="sudo apt update && sudo apt full-upgrade -y"
alias ll="ls -la"
alias c="cat"
alias e="nano"
alias docker="podman"

# Git aliases
alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gap='git apply'
alias gapa='git add --patch'
alias gau='git add --update'
alias gav='git add --verbose'
alias gb='git branch'
alias gbD='git branch -D'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gbl='git blame -b -w'
alias gbls='git branch -l'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gc='git commit -v -m'
alias 'gc!'='git commit -v --amend'
alias gca='git commit -v -a'
alias 'gca!'='git commit -v -a --amend'
alias gcam='git commit -a -m'
alias 'gcan!'='git commit -v -a --no-edit --amend'
alias 'gcans!'='git commit -v -a -s --no-edit --amend'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcf='git config --list'
alias gcl='git clone --recurse-submodules'
alias gclean='git clean -id'
alias gcm='git checkout main'
alias gcma='git checkout master'
alias gcmsg='git commit -m'
alias 'gcn!'='git commit -v --no-edit --amend'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'
alias gcsm='git commit -s -m'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags $(git rev-list --tags --max-count=1)'
alias gdcw='git diff --cached --word-diff'
alias gds='git diff --staged'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfg='git ls-files | grep'
alias gfo='git fetch origin'
alias gg='git gui citool'
alias gga='git gui citool --amend'
alias ggpull='git pull origin "$(git_current_branch)"'
alias ggpur=ggu
alias ggpush='git push origin "$(git_current_branch)"'
alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias ghh='git help'
alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias gist='nocorrect gist'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gk='\gitk --all --branches'
alias gke='\gitk --all $(git log -g --pretty=%h)'
alias gl='git pull'
alias glg='git log --stat'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat -p'
alias gllf='git log --name-only --pretty=oneline --full-index'
alias glo='git log --oneline --decorate'
alias globurl='noglob urlglobber '
alias glod='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
alias glods='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
alias glola='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
alias glols='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'
alias glp=_git_log_prettily
alias glum='git pull upstream master'
alias gm='git merge'
alias gma='git merge --abort'
alias gmom='git merge origin/master'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
alias gmum='git merge upstream/master'
alias goh='cd /mnt/c/Users/Kamen_Medarski'
alias gohome='cd /mnt/c/Users/Kamen_Medarski'
alias gp='git push'
alias gpd='git push --dry-run'
alias gpf='git push --force-with-lease'
alias 'gpf!'='git push --force'
alias gph='git commit --amend && git push origin HEAD:$(git branch --show-current)'
alias gpoat='git push origin --all && git push origin --tags'
alias gpristine='git reset --hard && git clean -dfx'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gpu='git push upstream'
alias gpv='git push -v'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbd='git rebase develop'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias grev='git revert'
alias grh='git reset'
alias grhh='git reset --hard'
alias grm='git rm'
alias grmc='git rm --cached'
alias grmv='git remote rename'
alias groh='git reset origin/$(git_current_branch) --hard'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grt='cd "$(git rev-parse --show-toplevel || echo .)"'
alias gru='git reset --'
alias grup='git remote update'
alias grv='git remote -v'
alias gsb='git status -sb'
alias gsd='git svn dcommit'
alias gsh='git show'
alias gsi='git submodule init'
alias gsps='git show --pretty=short --show-signature'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash push'
alias gstaa='git stash apply'
alias gstall='git stash --all'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsu='git submodule update'
alias gtl='gtl(){ git tag --sort=-v:refname -n -l ${1}* }; noglob gtl'
alias gts='git tag -s'
alias gtv='git tag | sort -V'
alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git pull --rebase'
alias gupa='git pull --rebase --autostash'
alias gupav='git pull --rebase --autostash -v'
alias gupv='git pull --rebase -v'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'

#Kubectl aliases
alias k=kubectl
alias kaf='kubectl apply -f'
alias kar='kubectl argo rollouts'
alias kara='kubectl argo rollouts abort'
alias karc='kubectl argo rollouts create'
alias karg='kubectl argo rollouts get'
alias karl='kubectl argo rollouts list'
alias karp='kubectl argo rollouts pause'
alias karpr='kubectl argo rollouts promote'
alias karr='kubectl argo rollouts retry'
alias karrs='kubectl argo rollouts restart'
alias kars='kubectl argo rollouts set'
alias karst='kubectl argo rollouts status'
alias kart='kubectl argo rollouts terminate'
alias karu='kubectl argo rollouts undo'
alias kca='f(){ kubectl "$@" --all-namespaces;  unset -f f; }; f'
alias kccc='kubectl config current-context'
alias kcdc='kubectl config delete-context'
alias kcgc='kubectl config get-contexts'
alias kci='kubectl cluster-info'
alias kcn='kubectl config set-context $(kubectl config current-context) --namespace'
alias kcp='kubectl cp'
alias kcsc='kubectl config set-context'
alias kcuc='kubectl config use-context'
alias kd='kubectl describe'
alias kdcm='kubectl describe configmap'
alias kdd='kubectl describe deployment'
alias kddr='kubectl describe destinationrules'
alias kdel='kubectl delete'
alias kdelapi='kubectl delete authorizationpolicies'
alias kdelcm='kubectl delete configmap'
alias kdeld='kubectl delete deployment'
alias kdelf='kubectl delete -f'
alias kdeli='kubectl delete ingress'
alias kdelno='kubectl delete node'
alias kdelns='kubectl delete namespace'
alias kdelp='kubectl delete pods'
alias kdelpvc='kubectl delete pvc'
alias kdels='kubectl delete svc'
alias kdelsec='kubectl delete secret'
alias kdelss='kubectl delete statefulset'
alias kdgq='kubectl describe gateway'
alias kdi='kubectl describe ingress'
alias kdj='kubectl describe jobs'
alias kdn='kubectl describe nodes'
alias kdno='kubectl describe node'
alias kdns='kubectl describe namespace'
alias kdp='kubectl describe pod'
alias kdpa='kubectl describe peerauthentication'
alias kdpvc='kubectl describe pvc'
alias kds='kubectl describe svc'
alias kdsec='kubectl describe secret'
alias kdss='kubectl describe statefulset'
alias kdvs='kubectl delete virtualservice'
alias keapi='kubectl edit authorizationpolicies'
alias kecm='kubectl edit configmap'
alias ked='kubectl edit deployment'
alias kei='kubectl edit ingress'
alias kej='kubectl edit jobs'
alias keno='kubectl edit node'
alias kens='kubectl edit namespace'
alias kep='kubectl edit pods'
alias kepvc='kubectl edit pvc'
alias kes='kubectl edit svc'
alias kess='kubectl edit statefulset'
alias keti='kubectl exec -it'
alias kevs='kubectl edit virtualservice'
alias kg='kubectl get'
alias kga='kubectl get all'
alias kgaa='kubectl get all --all-namespaces'
alias kgadp='kubectl get adapters'
alias kgapi='kubectl get authorizationpolicies'
alias kgapj='kubectl get appproj'
alias kgapp='kubectl get apps'
alias kgcfm='kubectl get configmaps'
alias kgcm='kubectl get configmaps'
alias kgd='kubectl get deployments'
alias kgdr='kubectl get destinationrules'
alias kgds='kubectl get daemonsets'
alias kgdw='kgd --watch'
alias kgdwide='kgd -o wide'
alias kge='kubectl get events'
alias kgevf='kubectl get envoyfilters'
alias kggw='kubectl get gateway'
alias kgi='kubectl get ingress'
alias kgj='kubectl get jobs'
alias kglb='kubectl get loadbalancers'
alias kgn='kubectl get nodes'
alias kgno='kubectl get nodes'
alias kgns='kubectl get namespaces'
alias kgp='kubectl get pods'
alias kgpa='kubectl get peerauthentication'
alias kgpl='kgp -l'
alias kgpvc='kubectl get pvc'
alias kgpvcw='kgpvc --watch'
alias kgpw='kgp --watch'
alias kgpwide='kgp -o wide'
alias kgrs='kubectl get rs'
alias kgru='kubectl get rules'
alias kgs='kubectl get services'
alias kgsa='kubectl get serviceaccounts'
alias kgsec='kubectl get secret'
alias kgss='kubectl get statefulset'
alias kgssw='kgss --watch'
alias kgsswide='kgss -o wide'
alias kgsts='kubectl get statefulsets'
alias kgsw='kgs --watch'
alias kgswide='kgs -o wide'
alias kgvs='kubectl get virtualservices'
alias kgwle='kubectl get workloadentries'
alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias kns='~/.bin/kubens'
alias kpd='kubectl patch deployment'
alias kpf='kubectl port-forward'
alias kpfa='kubectl port-forward --address 0.0.0.0'
alias krf='kubectl replace -f'
alias krh='kubectl rollout history'
alias krrd='kubectl rollout restart deployment'
alias krrds='kubectl rollout restart daemonsets'
alias krrs='kubectl rollout restart statefulset'
alias krsd='kubectl rollout status deployment'
alias krsss='kubectl rollout status statefulset'
alias kru='kubectl rollout undo'
alias ksd='kubectl scale deployment'
alias ksss='kubectl scale statefulset'
alias ktn='kubectl top node'
alias ktp='kubectl top pod'
alias ktpc='kubectl top pod --containers'
alias kxdnd='kxres; export PROMPT="(ADD1) $PROMPT";export KUBECONFIG=~/.kube/apex-dev-npdp1-pks.config'
alias kxlocal='kxres;export PROMPT="(kxlo) $PROMPT";export KUBECONFIG=~/.kube/config'
alias kxres='export PROMPT=$APROTMPT; unset KUBECONFIG'

# Minikube aliases
alias mk="minikube"

# Environment variables
export EDITOR=nano
export PATH=~/java/jdk-11.0.14.1+1/bin:$PATH
export PATH=$PATH:$HOME/.istioctl/bin
export PATH=$PATH:$HOME/.local/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
