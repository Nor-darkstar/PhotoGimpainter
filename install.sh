#!/bin/bash

# Destination directory
DEST_DIR="$HOME/.config"
FONT_DIR="PhotoGimpainter/fonts"
tar -xvf $FONT_DIR/fonts-1.tar.xz -C $FONT_DIR
tar -xvf $FONT_DIR/fonts-2.tar.xz -C $FONT_DIR

# Remove folder if existing
if [ -d "$DEST_DIR/GIMP" ]; then
  rm -rf "$DEST_DIR/GIMP"
fi

mkdir -p $DEST_DIR/GIMP
cp -rf PhotoGimpainter/ "$DEST_DIR/GIMP/3.0"
rm -rf $DEST_DIR/3.0/fonts/fonts-1.tar.xz
rm -rf $DEST_DIR/3.0/fonts/fonts-2.tar.xz
echo "Finished..."
