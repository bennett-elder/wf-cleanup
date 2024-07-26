#!/bin/bash
source ./owner-and-repo.sh
gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/$OWNER/$REPO/actions/workflows/$1/runs?per_page=100 | jq -r '.workflow_runs[].id' \
  > $1.txt