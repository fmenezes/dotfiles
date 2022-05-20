#!/bin/zsh

source ./script/common.sh

pushd .
cd ./symlink.d
for file in *; do
    src="$PWD/$file"
    dest="$HOME/${file}"
    bkp="$dest.bak"
    echo "Symlinking ${file} ..."
    if [[ -L $dest ]]; then
        echo "Symlink for ${file} already exists, skipping"
        continue
    else
        if [[ -f $dest ]]; then
            mv $dest $bkp
        fi
        ln -s $src $dest
        echo "Done"
    fi
done
popd

touch ~/.config/.gitconfig

./steps/symlinks/user.sh
