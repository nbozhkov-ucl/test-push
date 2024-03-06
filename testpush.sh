 #!/bin/bash
set -e

# first argument is the build name
[ -z "$1" ] && echo "You must specify a build name" && exit 1
build_name=$1

# download the build
#git clone --branch $build_name git@github.com:ucl-isd/moodle-submodules.git submodules
#cd submodules 
#git submodule init
#git submodule update
cd $build_name
git remote add catalyst git@git.catalyst-eu.net:ucl/moodle.git
git push -f catalyst $build_name:UCL_403_STABLE
