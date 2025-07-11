#!/usr/bin/env bash

declare -i num=10
declare -r PI=3.14
declare -u up="bash rocks"
declare -l low="HELLO"
echo "Integer: $(( num + 5 ))"
echo "Uppercase: $up"
echo "Lowercase: $low"

declare -a fruits=("apple" "banana" "cherry")
echo "Fruit 2: ${fruits[1]}"

declare -A emails=(
  [john]="john@example.com"
  [jane]="jane@example.com"
)
echo "Jane's email: ${emails[jane]}"
