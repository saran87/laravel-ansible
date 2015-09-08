#!/bin/bash

set -e

role=$1
roles_dir="./roles"

if [ -z $role ]
then
    echo -n  "Please provide a role name"
    read role
fi

for dir in "defaults" "files" "handlers" "meta" "tasks" "templates" "vars"
do
    mkdir -p $roles_dir/$role/$dir
    touch $roles_dir/$role/$dir/.gitkeep
done

