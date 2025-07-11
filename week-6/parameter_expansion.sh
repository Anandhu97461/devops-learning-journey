#!/usr/bin/env bash

filename="archive.tar.gz"
echo "Original: $filename"
echo "Remove shortest suffix: ${filename%.*}"
echo "Remove longest suffix: ${filename%%.*}"
echo "Remove prefix up to first dot: ${filename#*.}"
echo "Remove prefix up to last dot: ${filename##*.}"s