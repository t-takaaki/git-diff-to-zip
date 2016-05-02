#!/bin/bash
if [ "$1" = "" ]; then
  echo "parameter is not defined, default set diff master branch"
  BRANCH_NAME="master"
  else
  BRANCH_NAME=$1
  IS_BRANCH_EXISTED=`git branch | grep $BRANCH_NAME`
  if [ "$IS_BRANCH_EXISTED" = "" ]; then
    echo "branch is not existed!"
    exit
  fi

fi

echo "get zip diff $BRANCH_NAME"

IS_ESCAPED=`git config --get core.quotepath`

if $IS_ESCAPED; then
  # setting unescape 2byte characters
  git config --bool core.quotepath false
fi

# zip files
git archive --format=zip --prefix=diff/ HEAD `git diff $BRANCH_NAME --diff-filter=ACMR --name-only` -o diff.zip

if $IS_ESCAPED; then
  # setting escape 2byte characters
  git config --bool core.quotepath true
fi
