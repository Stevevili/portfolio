#!/bin/bash

read -sp "type secret password : " pass_var

echo $pass_var | sha256sum

cat secret.txt

if [ "$(echo $pass_var | sha256sum)" = "$(cat secret.txt)" ]

then
  echo "Access Granted"
  exit 0

else
  echo "Access Denied"
  exit 1
fi
