#!/usr/bin/env bash
set -euo pipefail

echo "Script starting..."
echo "This will fail if any command fails, or unset var is used."

undefined_var=${not_set:-"default fallback"}
echo "Using fallback for unset var: $undefined_var"

false   # This will trigger script exit due to `-e`
echo "This line won't run due to 'set -e'"