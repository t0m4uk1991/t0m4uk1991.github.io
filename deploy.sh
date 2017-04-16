#!/bin/bash

jekyll build

rsync -rcv _site/* ../t0m4uk1991.github.io

cd ../t0m4uk1991.github.io

touch .nojekyll
git add .
git commit -m "New release"
git push origin master
