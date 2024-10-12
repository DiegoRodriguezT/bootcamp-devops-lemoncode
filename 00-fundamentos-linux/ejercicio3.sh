#!/bin/bash

TEXTO=${1:-"Que me gusta la bash!!!!"}

mkdir -p foo/{dummy,empty}
touch ./foo/dummy/file{1,2}.txt
echo $TEXTO > ./foo/dummy/file1.txt
cp ./foo/dummy/file1.txt ./foo/dummy/file2.txt
mv ./foo/dummy/file2.txt ./foo/empty
