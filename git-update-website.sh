#!/bin/sh
# cd /c/Users/s2598056/Dropbox/websites/Hugo/mcoster

shopt -s dotglob
mkdir tmp
mv public/CNAME public/.git public/keybase.txt tmp
rm -rf public/*
mv tmp/* public
rm -rf tmp

git add .
git commit -m "Update academic website"
git push -u origin master
hugo
cd public
git add .
git commit -m "Rebuild website"
git push -u origin master
