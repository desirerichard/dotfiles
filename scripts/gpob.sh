#!/bin/zsh
{
  echo "Adding all changes..."
  git add -A

  if [ $? -ne 0 ]; then
    echo "Failed to add changes"
    exit 1
  fi

  echo "Committing changes..."
  git commit -m "update"

  if [ $? -ne 0 ]; then
    echo "Failed to commit changes"
    exit 1
  fi

  echo "Pushing to remote..."
  git push

  if [ $? -ne 0 ]; then
    echo "Failed to push changes"
    exit 1
  fi

  echo "Script executed successfully."
}
