#!/bin/bash

# Check if a commit message was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <commit-message>"
    exit 1
fi

# Define variables
COMMIT_MESSAGE=$1

# Add changes to the staging area
git add .

# Commit changes with the provided message
git commit -m "$COMMIT_MESSAGE"

# Push changes to the origin
git push origin

# Print a success message
echo "Changes have been committed and pushed to origin with the message: $COMMIT_MESSAGE"
