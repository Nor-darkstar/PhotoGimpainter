#!/bin/bash

DEST_DIR=
FONT_DIR="PhotoGimpainter/fonts"
tar -xvf $FONT_DIR/fonts-1.tar.xz -C $FONT_DIR
tar -xvf $FONT_DIR/fonts-2.tar.xz -C $FONT_DIR

# Destination directory

  DEST_DIR="$HOME/.config/GIMP"
  mkdir -p $DEST_DIR
#fi

# Remove folder if existing
if [ -d "$DEST_DIR/GIMP" ]; then
  rm -rf "$DEST_DIR/GIMP"
fi
cp -rf PhotoGimpainter/ "$DEST_DIR/3.0"
rm -rf $DEST_DIR/3.0/fonts/fonts-1.tar.xz
rm -rf $DEST_DIR/3.0/fonts/fonts-2.tar.xz
echo "Finished..."
