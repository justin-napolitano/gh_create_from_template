---
slug: github-gh-create-from-template
title: Automate GitHub Repository Creation from Template Script
repo: justin-napolitano/gh_create_from_template
githubUrl: https://github.com/justin-napolitano/gh_create_from_template
generatedAt: '2025-11-23T09:01:47.717563Z'
source: github-auto
summary: >-
  This script automates creating and cloning GitHub repositories from a template
  using the GitHub CLI and Git.
tags:
  - github-cli
  - bash
  - git
  - repository-automation
  - cli-tools
  - github
  - scripting
seoPrimaryKeyword: github repository automation script
seoSecondaryKeywords:
  - create github repository
  - clone github template
  - github cli usage
  - bash scripting for developers
seoOptimized: true
topicFamily: automation
topicFamilyConfidence: 1
topicFamilyNotes: >-
  The post is about a Bash script automating the creation and cloning of GitHub
  repositories from templates using GitHub CLI and Git, directly matching the
  Automation family focused on automating git workflows and scripting.
kind: project
id: github-gh-create-from-template
---

# Create and Clone GitHub Repository Script: Technical Overview

This project addresses a common task in software development workflows: initializing a new GitHub repository from a standard template and preparing it for local development. The manual process of creating repositories, applying templates, and cloning can be repetitive and error-prone. This script automates that process using existing command-line tools.

## Motivation

Developers often maintain a set of repository templates to enforce consistency across projects. Creating a new repository from a template and cloning it locally is a multi-step manual process involving the GitHub web interface or multiple CLI commands. Automating this reduces friction and potential errors, saving time.

## Problem Statement

Manual creation of repositories from templates requires:

- Navigating to GitHub UI
- Selecting the template repository
- Configuring repository settings
- Cloning the repository locally

This process is inefficient for users who frequently create similar repositories.

## Implementation Details

The script is written in Bash and depends on two tools:

- **GitHub CLI (`gh`)**: Used to create the new repository from a specified template.
- **Git**: Used to clone the newly created repository locally.

### Workflow

1. **Dependency Check**: The script first verifies that the `gh` CLI is installed. If not, it exits with an error message.

2. **User Input**: It prompts the user for the new repository name, enforcing a non-empty value.

3. **Repository Creation**: Using `gh repo create`, it creates a new public repository based on the hardcoded template `justin-napolitano/gh_submodule_sync`. The `--confirm` flag bypasses interactive prompts.

4. **Error Handling**: If repository creation fails, the script exits with an error.

5. **Cloning**: Upon successful creation, the script clones the new repository via HTTPS.

6. **Final Check**: It verifies the clone operation succeeded and reports success or failure.

### Assumptions

- The user is authenticated with GitHub CLI.
- The template repository `justin-napolitano/gh_submodule_sync` exists and is accessible.
- The script is run in an environment with network access.

## Practical Considerations

- The script is interactive, requiring user input for the repository name.
- Visibility is fixed to public; no option for private repositories.
- The template repository is hardcoded, limiting flexibility.
- Error handling covers basic failure points but could be extended.

## Summary

This script simplifies the creation of new GitHub repositories from a template by automating repository creation and cloning. It leverages standard CLI tools and basic shell scripting to reduce manual steps. Future improvements could enhance flexibility and usability by adding parameters and supporting additional repository configurations.


