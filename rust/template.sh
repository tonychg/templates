#!/bin/bash

projectname="$1"
sed -i -e "s#{{projectname}}#$projectname#g" Cargo.toml
sed -i -e "s#{{projectname}}#$projectname#g" flake.nix
