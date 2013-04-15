vim-repo
===

A git repository composed of mostly submodules that link to plugins. Also contains my vimrc, for moving and syncing between multiple hosts.

Since I keep missing the fact that there's a ``startup.sh`` to do this for me; here are the steps:

Set up symbolic links
---

    ln -s ./vimrc ~/.vimrc
    ln -s ./dot-vim ~/.vim

Update all vim plugins
---

    git submodule update --init --recursive

Add a new bundle as a submodule
---

    git submodule add git://path/to/remote.git dot-vim/bundle/remote


