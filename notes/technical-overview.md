---
slug: github-gh-create-from-template-note-technical-overview
id: github-gh-create-from-template-note-technical-overview
title: gh_create_from_template Overview
repo: justin-napolitano/gh_create_from_template
githubUrl: https://github.com/justin-napolitano/gh_create_from_template
generatedAt: '2025-11-24T18:37:16.714Z'
source: github-auto
summary: >-
  This repo has a shell script that automates creating a new GitHub repo from a
  template and cloning it to your local machine. It makes use of the GitHub CLI
  and Git for a smooth setup.
tags: []
seoPrimaryKeyword: ''
seoSecondaryKeywords: []
seoOptimized: false
topicFamily: null
topicFamilyConfidence: null
kind: note
entryLayout: note
showInProjects: false
showInNotes: true
showInWriting: false
showInLogs: false
---

This repo has a shell script that automates creating a new GitHub repo from a template and cloning it to your local machine. It makes use of the GitHub CLI and Git for a smooth setup.

## Key Features

- Creates a GitHub repo from a specified template
- Clones the repo locally
- Checks if GitHub CLI and Git are installed
- Handles common errors

## Getting Started

### Prerequisites

- [GitHub CLI](https://cli.github.com/) (installed and authenticated)
- Git

### Running the Script

1. Clone the repo:
   ```sh
   git clone https://github.com/justin-napolitano/gh_create_from_template.git
   ```

2. Make the script executable:
   ```sh
   chmod +x gh_create_from_template.sh
   ```

3. Run the script:
   ```sh
   ./gh_create_from_template.sh
   ```

4. Enter the repo name when prompted.

### Gotchas

It creates a public repo based on the `justin-napolitano/gh_submodule_sync` template. Keep an eye on your GitHub permissions!
