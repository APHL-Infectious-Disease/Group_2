#!/usr/bin/env bash
set -e

echo "Starting environment setup..."

# For Apple silicon 
export CONDA_SUBDIR=osx-64

# Main shared environment
if [ -f environment.yml ]; then
    echo "Installing bio environment..."
    mamba env update -f environment.yml
fi

# Additional environments
for file in \
    environment-amr.yml \
    environment-checkm.yml \
    environment-cansnper.yml \
    environment-virulence.yml \
    environment-augur.yml
do
    if [ -f "$file" ]; then
        echo "Installing from $file ..."
        mamba env create -f "$file" || mamba env update -f "$file"
    fi
done

# Clean cache to save storage
mamba clean --all -y

echo "Setup complete."