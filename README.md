#!/usr/bin/env sh
set -eu

git remote add codecommit codecommit::ap-south-1://github-backup-repo 
git push codecommit backup
