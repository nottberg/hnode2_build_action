#!/bin/sh -l

echo $GITHUB_WORKSPACE
rootls=$(ls -lah)
echo "Root $rootls"
cd ${GITHUB_WORKSPACE}
libls=$(ls -lah)
echo "Lib $libls"


echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
