#!/bin/bash
mamba create -n 00_fs python==3.9
mamba activate 00_fs 

pip install jupyter numpy scipy matplotlib tifffile itkwidgets