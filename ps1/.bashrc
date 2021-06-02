#Custom prompt
# get current branch in git repo
function parse_git_branch() {
        BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
        if [ ! "${BRANCH}" == "" ]
        then
                echo "[${BRANCH}${STAT}]"
        else
                echo ""
        fi
}

export PS1="\[\e[01;32m\]\A\[\e[m\] \[\e[36m\]\u\[\e[m\] : \[\e[01;32m\]\W\[\e[m\] \[\e[01;31m\]\`parse_git_branch\`\[\e[m\] \[\e[01;37m\]>>\[\e[m\] "