#/bin/sh

CUR_DIR=$(pwd)
BASH_PROFILE=$HOME/.bash_profile

# create link
rm -rf $HOME/.vimrc
rm -rf $HOME/.vim
ln -s $CUR_DIR/vimrc $HOME/.vimrc
ln -s $CUR_DIR/vim $HOME/.vim

# import tag to .bash_profile
tag="alias tag='$CUR_DIR/gen_tag.sh'"
untag="alias untag='find ./ -name \"tags\" -o -name \"cscope.*\"|xargs rm'"

echo '#tag generate & clear; For read source code' >> $BASH_PROFILE
echo $tag >> $BASH_PROFILE
echo $untag >> $BASH_PROFILE

source $BASH_PROFILE


