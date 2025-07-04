#!/bin/bash
set -e

echo "=== Testing ponysay build process ==="

# Clean first
echo "Cleaning..."
python3 setup.py clean

# Build
echo "Building..."
python3 setup.py --freedom=partial build

echo "=== Build completed successfully ==="
echo "Files created:"
ls -la *.install 2>/dev/null || echo "No .install files"
ls -la completion/*install 2>/dev/null || echo "No completion files"
ls -la manuals/*install 2>/dev/null || echo "No manual files"

echo "=== Testing ponysay execution ==="
head -5 ponysay.install