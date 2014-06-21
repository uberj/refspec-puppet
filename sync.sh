#!/bin/bash

set -x -e
export LIBRARIAN_PUPPET_TMP=/tmp/


# Sync all environments from remote repo in /etc/r10k.yaml
r10k deploy environment -v

# For each environemnt pull down requirements
for d in $(ls environments); do
    env_path=environments/$d
    if [ -d $env_path ]; then
        pushd $env_path
        librarian-puppet install --verbose
        popd
    fi
done

