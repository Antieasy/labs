#!/bin/bash

mkdir Documents
cd Documents/
mkdir projects
cd projects/
mkdir lab19
cd lab19/
mkdir using
cd using/
mkdir simple
cd simple/
mkdir bash
cd bash/
mkdir commands
cd commands/
part=$(ls -a | egrep -o '[a-zA-Z0-9]{28}')
echo 'Flag is: ' $part
