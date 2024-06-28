# Create and Clone GitHub Repository Script

## Overview

This script automates the process of creating a new GitHub repository from a template and cloning it to your local machine. The script uses the GitHub CLI to create the repository and Git to clone it. 

## Prerequisites

- **GitHub CLI**: Ensure you have the GitHub CLI installed. You can find installation instructions [here](https://cli.github.com/).
- **Git**: Ensure you have Git installed on your system.

## Usage

1. **Save the Script**: Save the following script to a file, for example, `create_and_clone_repo.sh`.

    ```bash
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
    ```

2. **Make the Script Executable**:
    ```sh
    chmod +x create_and_clone_repo.sh
    ```

3. **Run the Script**:
    ```sh
    ./create_and_clone_repo.sh
    ```

4. **Follow the Prompts**: The script will prompt you to enter the name of the new repository. After entering the name, it will create the repository using the template and clone it to your local machine.

## Script Explanation

- **Function to Check Command Existence**: The `command_exists` function checks if a command is available on the system.
- **Check for GitHub CLI**: The script checks if the GitHub CLI (`gh`) is installed. If not, it exits with an error message.
- **Prompt for Repository Name**: The script prompts the user to enter the new repository name.
- **Create Repository**: The script creates the new repository using the specified template.
- **Clone Repository**: The script clones the newly created repository to the local machine.
- **Error Handling**: The script includes error handling to ensure each step is completed successfully. If any step fails, the script exits with an appropriate error message.
