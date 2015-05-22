#!/usr/bin/env bash

# Cauldron provider that uses the Conjur CLI

varname=${1}

if [ -z ${varname} ]; then
  echo -n "No argument received!"
  exit 1
fi

out=$(conjur variable value ${varname} 2>&1)
status=$?

echo ${out}
exit ${status}
