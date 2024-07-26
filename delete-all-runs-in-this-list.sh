#!/bin/bash
source ./owner-and-repo.sh
cat $1 |
while read in; do
  gh api \
  --method DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/$OWNER/$REPO/actions/runs/$in > /dev/null
done