#!/usr/bin/env bash

echo "name:"
read NAME
echo "email:"
read EMAIL

git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
echo "git user set to: $NAME <$EMAIL>"