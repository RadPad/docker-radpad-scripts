#!/bin/bash

# A list of helper aliases to work with Docker and Rails

# There may be multiple containers that match the pattern
# so only query for the first match
alias rpexec="docker exec -it `docker ps | grep radpad/ | awk 'NR==1{ print $1 }'`"
alias rpexec_notty="docker exec `docker ps | grep radpad/ | awk 'NR==1{ print $1 }'`"
alias rplogs="docker logs -f `docker ps | grep radpad/ | awk 'NR==1{ print $1 }'`"
alias rpbash="rpexec bash -l"
alias rprun="rpexec bash -lc"
alias rpmigrate='rprun "bundle exec rake db:migrate"'
alias rpconsole='rprun "bundle exec rails c"'
