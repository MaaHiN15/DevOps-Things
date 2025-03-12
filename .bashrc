# K8s commands
alias pods='kubectl get pods'
alias wpods='watch kubectl get pods'
alias k='kubectl'
alias kdesc='kubectl describe pod '

# Git aliases
alias amend='git commit -a --amend --no-edit'
alias fpush='git push -f origin `git rev-parse --abbrev-ref HEAD`'
alias push='git push origin `git rev-parse --abbrev-ref HEAD`'
alias deletebranch='git push origin --delete '
alias glog='git log --oneline'
alias gbdiff='git log --left-right --graph --cherry-pick --oneline '
alias pull='git pull || git pull origin `git rev-parse --abbrev-ref HEAD`'
alias gbclean='git branch | xargs git branch -d'

# Git branch configuration
force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1) /'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt

# Kubernetes default editor
KUBE_EDITOR=nvim

JAVA_HOME=/usr/lib/jvm
PATH="$PATH:/home/mitsuser/go/bin:/home/mitsuser/.local/bin:$JAVA_HOME/bin:/opt/nvim-linux64/bin:$HOME/.gloo/bin"
