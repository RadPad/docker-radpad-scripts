#!/bin/bash

# A list of helper aliases to work with Docker and Rails

# There may be multiple containers that match the pattern
# so only query for the first match
export DOCKER_CONTAINER="`docker ps | grep radpad/ | awk 'NR==1{ print $1 }'`"

alias rpexec="docker exec -it $DOCKER_CONTAINER"
alias rpexec_notty="docker exec $DOCKER_CONTAINER"
alias rplogs="docker logs -f $DOCKER_CONTAINER"
alias rpbash="rpexec bash -l"
alias rprun="rpexec bash -lc"
alias rpmigrate='rprun "bundle exec rake db:migrate"'
alias rpconsole='rprun "bundle exec rails c"'
