# GitHub Actions Workflow Run Cleanup

## Setup

* Have GitHub CLI installed and logged in
* Set the organization and repo name for the workflow runs you will be deleting in owner-and-repo.sh

## Usage

```
./gather-run-ids.sh NAME_OF_WORKFLOW_FILE_THAT_IS_IN_WORKFLOWS_FOLDER
```

example:

```
./gather-run-ids.sh twilio-service.yml
```

**Then based on the text file that outputs**

```
./delete-all-runs-in-this-list.sh NAME_OF_TXT_FILE_THE_PREVIOUS_STEP_OUTPUT
```

example:

```
./delete-all-runs-in-this-list.sh twilio-service.yml.txt
```

