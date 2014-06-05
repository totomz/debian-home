#!/bin/bash

# update-alternatives for Java7

if [[ -z "$1" ]]
    then 
        echo "update-alternatives for Java7."
        echo "Usage: update-alternatives <jdk-bin-path>"
        echo "Add an alternative for each executable found  <jdk-bin-path>/bin"
        exit 1
fi

if [ "$(whoami)" != "root"  ]; then
    echo "Sorry, you must be root"
    exit 1
fi


PRIORITY=2000
JDK_BIN_PATH="$1/bin"
echo "Using $JDK_BIN_PATH"

for cmd in $(find $JDK_BIN_PATH -maxdepth 1 -type f -executable -printf "%f\n" ); do
    echo "Updating $cmd"
    update-alternatives --install /usr/bin/$cmd $cmd $JDK_BIN_PATH/$cmd $PRIORITY
done

echo "done"
