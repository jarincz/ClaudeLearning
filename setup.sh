#!/bin/bash

# ClaudeLearning Setup Script
# Usage: ./setup.sh [project-name] [github-username]
# Example: ./setup.sh MyLearningProject jarincz

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get inputs or use defaults
PROJECT_NAME="${1:-.}"
GITHUB_USERNAME="${2:-jarincz}"

echo -e "${BLUE}═══════════════════════════════════════════════════════${NC}"
echo -e "${BLUE}  ClaudeLearning: 12-Week Learning Plan Setup${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════════${NC}\n"

# Create directory if needed
if [ "$PROJECT_NAME" != "." ]; then
  mkdir -p "$PROJECT_NAME"
  cd "$PROJECT_NAME"
fi

echo -e "${YELLOW}Creating folder structure...${NC}"

# Create week folders
mkdir -p week-01-html-css
mkdir -p week-02-javascript
mkdir -p week-03-apis
mkdir -p week-04-react
mkdir -p week-05-nextjs
mkdir -p week-06-backend
mkdir -p week-07-ai
mkdir -p week-08-integration
mkdir -p week-09-10-product-1
mkdir -p week-11-product-2
mkdir -p week-12-product-3
mkdir -p portfolio

echo -e "${GREEN}✓ Folder structure created${NC}\n"

# Initialize git
echo -e "${YELLOW}Initializing Git...${NC}"
git init
git config user.name "Developer"
git config user.email "dev@example.com"

echo -e "${GREEN}✓ Git initialized${NC}\n"

# Add all files
echo -e "${YELLOW}Adding files to Git...${NC}"
git add .
git commit -m "Initial commit: 12-week learning plan setup

- Created complete curriculum structure (weeks 1-12)
- Set up folders for all phases
- Ready to start Week 1: HTML & CSS fundamentals

Co-Authored-By: Claude Haiku 4.5 <noreply@anthropic.com>" 2>/dev/null || true

echo -e "${GREEN}✓ Files committed${NC}\n"

# Configure GitHub remote (if username provided)
if [ "$GITHUB_USERNAME" != "default" ]; then
  echo -e "${YELLOW}Setting up GitHub remote...${NC}"

  REPO_URL="https://github.com/${GITHUB_USERNAME}/ClaudeLearning.git"

  git remote add origin "$REPO_URL" 2>/dev/null || git remote set-url origin "$REPO_URL"
  git branch -M main 2>/dev/null || true

  echo -e "${GREEN}✓ GitHub remote configured${NC}"
  echo -e "   Repository: ${BLUE}$REPO_URL${NC}\n"

  echo -e "${YELLOW}To push to GitHub, run:${NC}"
  echo -e "   ${BLUE}git push -u origin main${NC}\n"
fi

echo -e "${BLUE}═══════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✓ Setup Complete!${NC}\n"

echo -e "${YELLOW}Next steps:${NC}"
echo -e "  1. Review: ${BLUE}plan.md${NC}"
echo -e "  2. Start: Week 1 (HTML & CSS fundamentals)"
echo -e "  3. Build: Your portfolio homepage"
echo -e "  4. Deploy: To Vercel"
echo -e "  5. Share: Progress on Twitter/LinkedIn\n"

echo -e "${YELLOW}Key Files:${NC}"
echo -e "  ${BLUE}plan.md${NC} - Complete 12-week curriculum"
echo -e "  ${BLUE}INDEX.md${NC} - Quick navigation"
echo -e "  ${BLUE}CLAUDE.md${NC} - Project context"
echo -e "  ${BLUE}CONVERSATION.md${NC} - Setup conversation\n"

echo -e "${YELLOW}Resources:${NC}"
echo -e "  GitHub: https://github.com/${GITHUB_USERNAME}/ClaudeLearning"
echo -e "  Video: Kevin Powell - HTML & CSS for Beginners"
echo -e "  Partner: Claude Code - Your pair programmer\n"

echo -e "${GREEN}Let's build! 🚀${NC}\n"
