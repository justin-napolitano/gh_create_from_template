#!/bin/bash

# Script to create a new GitHub repository from a template and clone it

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if gh CLI is installed
if ! command_exists gh; then
    echo "Error: GitHub CLI (gh) is not installed."
    echo "Please install GitHub CLI from https://cli.github.com/ and try again."
    exit 1
fi

# Prompt for the new repository name
read -p "Enter the new repository name: " REPO_NAME

# Check if the repository name is not empty
if [ -z "$REPO_NAME" ]; then
    echo "Error: Repository name cannot be empty."
    exit 1
fi

# Create the new repository from the template
gh repo create "$REPO_NAME" --template=justin-napolitano/gh_submodule_sync --public --confirm

# Check if the repository creation was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to create the repository."
    exit 1
fi

# Clone the new repository
git clone "https://github.com/justin-napolitano/$REPO_NAME.git"

# Check if the clone was successful
if [ $? -eq 0 ]; then
    echo "Repository '$REPO_NAME' created and cloned successfully."
else
    echo "Error: Failed to clone the repository."
    exit 1
fi
