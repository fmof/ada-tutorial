#!/bin/bash

set -o nounset
set -e

## FILL THIS IN
PI=

if [ -d ~/.conda ]; then
    echo "~/.conda already exists. Please move/make the symlink manually."
    exit 1
fi

if [ ! -L ~/.conda ]; then
    mkdir -p ~/${PI}_user/.ada_conda
    ln -s ~/${PI}_user/.ada_conda ~/.conda
fi

conda create --prefix=${PI}_user/ada_envs/nlp-env \
    pytorch torchvision torchaudio torchtext cudatoolkit=11.0 -c pytorch
