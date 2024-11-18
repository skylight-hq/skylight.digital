#!/usr/bin/env python3
import os
from pathlib import Path
import re
import fileinput

def rename_files():
    # Find all md and html files
    for ext in ['*.md', '*.html']:
        for filepath in Path('.').rglob(ext):
            if '-' in filepath.name:
                new_name = filepath.name.replace('-', '_')
                new_path = filepath.parent / new_name
                
                # Rename the file
                filepath.rename(new_path)
                print(f"Renamed: {filepath} -> {new_path}")

def update_references():
    # Update references in all files
    for ext in ['*.md', '*.html', '*.scss', '*.yml']:
        for filepath in Path('.').rglob(ext):
            update_needed = False
            with open(filepath, 'r') as file:
                content = file.read()
                
            # Look for markdown/html references with hyphens
            new_content = re.sub(
                r'(\[.*?\])\((.*?)([A-Za-z0-9-]+\.(md|html))(.*?)\)',
                lambda m: m.group(1) + '(' + m.group(2) + m.group(3).replace('-', '_') + m.group(5) + ')',
                content
            )
            
            # Look for Jekyll includes/layouts with hyphens
            new_content = re.sub(
                r'({%\s*(?:include|layout)\s+)([A-Za-z0-9-]+)(\s*%})',
                lambda m: m.group(1) + m.group(2).replace('-', '_') + m.group(3),
                new_content
            )
            
            if new_content != content:
                with open(filepath, 'w') as file:
                    file.write(new_content)
                print(f"Updated references in: {filepath}")

if __name__ == '__main__':
    rename_files()
    update_references() 