#!/usr/bin/env bash

echo "Brace Expansion:"
echo {A,B,C}{1,2}

echo -e "\nGlobbing Patterns:"
touch file1.txt file2.txt file3.log
ls file?.txt        # Matches file1.txt, file2.txt
ls file[1-2].*      # Matches file1.txt, file2.txt
ls file[^3].txt     # Excludes file3.txt