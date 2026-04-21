#!/usr/bin/env bash
set -e

echo "Starting environment setup..."

# Main shared environment
if [ -f environment.yml ]; then
    echo "Installing bio environment..."
    conda env update -f environment.yml
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
        conda env create -f "$file" || conda env update -f "$file"
    fi
done

# Clean cache to save storage
conda clean --all -y

echo "Setup complete."