#!/bin/bash

projectname=$1

sed -i -e "s#projectname#${projectname}#g" Taskfile.yml
sed -i -e "s#projectname#${projectname}#g" pyproject.toml
sed -i -e "s#projectname#${projectname}#g" README.md
sed -i -e "s#projectname#${projectname}#g" flake.nix
mv projectname $projectname
rm -f template.sh
