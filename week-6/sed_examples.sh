#!/usr/bin/env bash

# Print second line
sed -n '2p' employees.txt

# Delete lines 3-5
sed '3,5d' employees.txt

# Replace all "Manager" with "Lead"
sed 's/Manager/Lead/g' employees.txt

# Print only lines with "Finance"
sed -n '/Finance/p' employees.txt