#!/bin/bash

# A list of helper aliases to work with Docker and Rails
alias rpexec="docker exec -it `docker ps | grep radpad/ | awk 'NR==1{ print $1 }'`"
alias rpbash="rpexec bash -l"
alias rprun="rpexec bash -lc"
alias rpmigrate='rprun "bundle exec rake db:migrate"'
alias rpconsole='rprun "bundle exec rails c"'
