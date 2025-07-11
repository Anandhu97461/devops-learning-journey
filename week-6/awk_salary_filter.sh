#!/usr/bin/env bash

awk -F "|" \
  -v high_salary=90000 \
  -v low_salary=65000 \
  -v up_header="===== Raise Needed =====" \
  -v down_header="===== Top Earners =====" '
$7 <= low_salary {
  if (!printed_up_header) {
    print up_header
    printed_up_header = 1
  }
  print $2, $3, $7
}
$7 >= high_salary {
  if (!printed_down_header) {
    print down_header
    printed_down_header = 1
  }
  print $2, $3, $7
}
' < employees.txt