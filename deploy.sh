#!/bin/bash

# Set PATH to include homebrew binaries
export PATH="/opt/homebrew/bin:$PATH"

# Log the PATH for debugging purposes
echo "Current PATH: $PATH"

# Clean previous build
flutter clean

# Get dependencies
flutter pub get

# Build the web app with the correct base href
flutter build web --base-href "/First-Flutter-Dashboard/"

# Ensure the build directory exists
if [ -d "build/web" ]; then
    echo "Build directory exists, proceeding with deployment..."

    echo 'https://kkayaiirem.github.io/First-Flutter-Dashboard' > build/web/CNAME

    # Navigate to the build directory
    cd build/web || exit

    # Initialize a new Git repository
    git init

    # Add all files to the repository
    git add .

    # Commit the files
    git commit -m "Deploy to GitHub Pages"

    # Add your GitHub repository as a remote
    git remote add origin https://github.com/kkayaiirem/First-Flutter-Dashboard.git

    # Force push the files to the gh-pages branch
    git push -f origin main:gh-pages

    # Navigate back to the project root
    cd ../..
else
    echo "Error: Build directory does not exist. Please check the build process."
    exit 1
fi
