#!/bin/bash

  git config --global user.email "bot@livelyprojects.com"
  git config --global user.name "Build Bot"

# check out all the submodules (usually needed for hugo theme)
git submodule update --init --recursive

# get the remote branch for the ouput
git fetch origin gh-pages

WHERE=/tmp/my-test-$(date +%Y%m%d%H%M%S)
echo "Building in $WHERE"
mkdir -p $WHERE
git worktree add -f $WHERE gh-pages
find "$WHERE" -mindepth 1 -not -path "$WHERE/.git" -not -path "$WHERE/.git/*" -delete

hugo -d $WHERE

cd $WHERE
echo "www.complianceisafeature.com" > CNAME
git add .
git commit -m 'update'
git push
