#!/bin/bash

SOURCE_DIR="."
BACKUP_DIR="/f/HACKTIV8/Phase 0/Week 1/Day 4/backup"

mkdir -p "$BACKUP_DIR"

for file in $(find "$SOURCE_DIR" -type f -size +5M); do
	filename=$(basename "$file")
	tar -czf "$BACKUP_DIR/${filename}.tar.gz" "$file"
	echo "file $filename sudah dikompres dan dipindahkan"
done

echo "done login"



