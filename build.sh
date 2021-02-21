#!/usr/bin/env bash
rm -rf ./public
hugo -D
cd ./public
git init
git add .
git commit -m "init"
git branch -M main
git remote add origin git@github.com:xna00/my-blog.git
git push -u origin main -f
