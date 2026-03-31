#!/bin/bash

VENV_DIR="./venv"
KERNEL_NAME="ai-experiments"
KERNEL_DISPLAY_NAME="Python (ai-experiments)"

if [ -d "$VENV_DIR" ]; then
    echo "Removing existing virtual environment..."
    rm -rf "$VENV_DIR"
fi

python -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"

# Install the required packages
pip install -r requirements.txt

python -m ipykernel install --user --name="$KERNEL_NAME" --display-name "$DISPLAY_NAME"
