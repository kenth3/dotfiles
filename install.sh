#!/bin/bash

# Wait for VS Code to be fully available (up to 60 seconds)
timeout=60
counter=0

echo "Waiting for VS Code to be available..."
while ! command -v code &> /dev/null && [ $counter -lt $timeout ]; do
    sleep 2
    counter=$((counter + 2))
    echo "Still waiting... ($counter/$timeout seconds)"
done

if command -v code &> /dev/null; then
    echo "VS Code found! Installing personal extensions..."
    code --install-extension oderwat.indent-rainbow
    code --install-extension redhat.vscode-yaml
    code --install-extension GitHub.vscode-github-actions
else
    echo "Warning: VS Code command not available after $timeout seconds"
    echo "Extensions may need to be installed manually"
fi
