# configuration-files

Just a set of files (mostly `.vimrc`) that are useful to keep synced

## How to set up VIM on a new machine

### Prepare platform

#### On mac:

```
brew install cmake
```

#### On ubuntu:

```
sudo apt-get install cmake
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

Run `vim`. You'll see some errors. Ignore them. Once started, run `:PluginInstall`

This will error. Ignore it. Exit `vim`.

#### Compile YouCompleteMe

```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

### Test

run `vim` again. Profit!
