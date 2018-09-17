shopt -s expand_aliases
# centos has ruined me
alias ll='ls -alh'
# https://superuser.com/questions/99128/removing-the-escape-characters-from-gnu-screens-screenlog-n
alias cleanup_screenlog="perl -ne 's/\x1b[[()=][;?0-9]*[0-9A-Za-z]?//g;s/\r//g;s/\007//g;print'"
# storm is a dope ssh config filtering tool
alias f='storm list | grep $@'
alias ls="ls --color"
alias strip_leading_spaces="sed -e 's/^\ [A-Za-z].*//' -e 's/^\ *//'"
alias tcp_search="lsof -n -i4TCP| grep $@"
alias terraform-lint="tflint --debug && terraform validate && terraform plan"
alias terraform-graph="terraform graph -draw-cycles | dot -Tpng -o graph.png"
alias striphtml="perl -0777 -pe 's/<[^<]+?>//g' "$@""
alias less='less -R'
alias vagrant_oops="vagrant snapshot restore --no-provision default initial"
alias lint-jenkinsfile="ssh lint-jenkinsfile declarative-linter <"
alias python="python2.7"
# aws-vault related
alias aws-alexproduction="aws-vault exec alexproduction -- "
alias aws-alexdev="aws-vault exec alexdev -- "
alias aws-jellyvision="aws-vault exec jellyvision -- "

