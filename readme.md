# .dotfiles

Thought id take some time and throw my common dotfiles in a repo.

## Installation(ish)

When cloning be sure to specify the `--recursive` option to pull all of the submodules.  

Everything in the root of this repository should be sym linked to your home directory. Ultimately I'd like to make a small script to do the installation.

### Notes:

I enjoy having a transparent background in my terminal, as well as vim.  This is set in the Xdefaults file for rxvt, but in order for vim to respect this using the zenburn color scheme.  You will have to edit the zenburn.vim file and change the line `hi Normal ctermfg=188 ctermbg=237` to `hi Normal ctermfg=188 ctermbg=500` I would change this in the repo, but I want to keep the submodule updating from the zenburn git source.
