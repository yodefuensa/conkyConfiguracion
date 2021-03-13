#!/bin/sh

COLOR="FFFFFF"
i=1
df -hT /dev/nv* | grep -v '/boot/efi$' | grep -e '^/dev/nvme' | head -4 | sed 's/vfat/FAT32/g;s/fuseblk/NTFS/g;' | while read DEVICE TYPE SIZE USED FREE PERCENT MOUNT && [ $i -le 6 ]
do
  i=$((i+1))
  USED=$(printf "%4s" $USED | sed 's/B/ B  /;s/\([KMGT]\)/ \1iB/')
  SIZE=$(printf "%4s" $SIZE | sed 's/B/ B  /;s/\([KMGT]\)/ \1iB/')
  echo "$MOUNT \${alignr} $TYPE $DEVICE\n${USED} \${color $COLOR}\${fs_bar 6,335 ${MOUNT}} \$color\${alignr}${SIZE}"
done

