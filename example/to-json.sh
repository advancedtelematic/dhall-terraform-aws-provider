#!/bin/bash

FILES=$(ls *.tf.dhall)

mkdir -p output

for file in $FILES
do
  filename=$(echo $file | grep -o '^.*\.tf')
  echo $file
  cat $file | dhall-to-json --pretty --omitNull > output/$filename.json
done
