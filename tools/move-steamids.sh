#!/bin/sh
set -eux

appfile="steam_appid.txt"

for build_dir in .build/* ; do
  appid_file="$(find $build_dir -type f -name $appfile | grep -v $build_dir/$appfile| head -n 1)"
  cp $appid_file "$build_dir/$appfile"
done
