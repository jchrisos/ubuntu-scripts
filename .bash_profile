# disable touchscreen in dell laptop on ubuntu
xinput disable "ELAN Touchscreen"

#==================================================
#exports

#show git branch
export PS1='\[\e[1;34m\]\u@ \w\[\e[32m\]$(__git_ps1)\[\e[0m\] \[\e[1;34m\]\n▶\[\e[0m\] '

#my projects folder set in CDPATH
export CDPATH='~/Projects'

#==================================================
# functions and alias
function dcu() {
  docker-compose kill
  if [ -z "$1" ]; then
    docker-compose up
  else  
    docker-compose -f "$1" up
  fi
}

function dexec() {
  docker exec -it "$1" bash
}

function docker-stop() {
  sudo service docker stop
}

function docker-start() {
  sudo service docker start
}

function docker-restart() {
  sudo service docker stop
  sudo service docker start
}

function webmTOmp4() {
      ffmpeg -i "$1".webm -qscale 0 "$1".mp4
} 

function hgrep() {
      history | grep $1
} 

alias mongo-start='mongo -u admin -p 123456 --authenticationDatabase admin'

alias dck='docker-compose kill'
alias dps='docker ps --format "table {{.Names}}"'
alias dcmvn='docker-compose kill && mvn clean package -Dexclude.devtools=false -U -DskipTests && docker-compose up --build'
alias ..='cd ..'
alias server='python -m SimpleHTTPServer 8000'

alias goproj='cd ~/Projects'
alias godoc='cd ~/Documents'
alias gopic='cd ~/Pictures'
alias godl='cd ~/Downloads'

