#!/bin/bash
# Double-click this file to push jolleycpa to GitHub + open Netlify

cd "$(dirname "$0")"

echo "📦 Setting up git..."
git init
git config user.name "Tyson Black"
git config user.email "tysonblack423@gmail.com"
git branch -M main

echo "🔗 Adding remote..."
git remote remove origin 2>/dev/null
git remote add origin https://github.com/jtysonblack/jolleycpa.git

echo "📁 Staging files..."
git add -A
git commit -m "Initial build: Joshua T. Jolley, CPA, PLLC website"

echo "🚀 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Done! Opening Netlify to connect the repo..."
open "https://app.netlify.com/start/repos"

echo ""
echo "In Netlify: click 'Import from Git' → GitHub → jtysonblack/jolleycpa"
echo "No build command needed. Publish directory: leave blank (or set to .)"
echo ""
read -p "Press any key to close..."
