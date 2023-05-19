#!/bin/bash    
FILE=$(basename "$1")    
MOUNTPOINT="/tmp/$FILE"  
fuseiso -p "$1" "$MOUNTPOINT"
