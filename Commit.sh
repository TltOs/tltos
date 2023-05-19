#!/bin/bash
git add .
echo "Write Commit Input"
read input
git commit -m "$input"
git push 
