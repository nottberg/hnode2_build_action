#!/bin/sh -l

ls -lah

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
