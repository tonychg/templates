#!/bin/bash

projectname=$1

sed -i -e "s#projectname#${projectname}#g"
mv projectname $projectname
