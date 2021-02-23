#!/bin/bash

set -o nounset
set -e

## FILL THIS IN
PI=

if [ ! -L ~/.conda ]; then
    mkdir -p ~/${PI}_user/.ada_conda
    ln -s ~/ferraro_user/.ada_conda .conda
fi

conda create --prefix=${PI}_user/ada_envs/nlp-env \
    pytorch torchvision torchaudio torchtext cudatoolkit=11.0 -c pytorch
