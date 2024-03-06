#!/bin/bash

# D2Net
mkdir -p d2net
wget https://dusmanu.com/files/d2-net/d2_tf.pth -O d2net/d2_tf.pth
wget https://dusmanu.com/files/d2-net/d2_tf_no_phototourism.pth -O d2net/d2_tf_no_phototourism.pth

# R2D2 Symbolic  links
ln -s ../third_party/r2d2/models  r2d2

# Patch2Pix Symbolic links
ln -s ../third_party/patch2pix/pretrained patch2pix
cd patch2pix
bash download.sh
cd ..
