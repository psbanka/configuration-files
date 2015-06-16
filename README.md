# configuration-files

Just a set of files (mostly `.vimrc`) that are useful to keep synced

## How to set up VIM on a new machine

### Prepare platform

We assume you have `node` installed. If not, go download `nvm` and come back here when done.

#### On mac:

```
brew install cmake
```

#### On ubuntu:

```
sudo apt-get install cmake python-dev
```

### Install

#### Grab the file
```
curl https://raw.githubusercontent.com/psbanka/configuration-files/master/.vimrc > ~/.vimrc
```

#### Set up Vundle

```
cd ~;mkdir -p .vim/bundle;git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

- Run `vim`. You'll see some errors. Ignore them. 

- Inside vim, run `:PluginInstall`

- This will error. Ignore it. Exit `vim`.

#### Compile YouCompleteMe

```
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
```

#### Install node modules for tern
```
cd ~/.vim/bundle/tern_for_vim/
npm install
```

### Test

run `vim` again. Profit!
