#!/bin/sh
cd ~/Dropbox/website/Hugo/mcoster
git add .
git commit -m "Update academic website"
git push -u origin master
hugo
cd public
git add .
git commit -m "Rebuild website"
git push -u origin master
