# configuration-files

Just a set of files (mostly `.vimrc`) that are useful to keep synced

## How to set up VIM on a new machine

### Step-1


```
cd ~;mkdir -p .vim/bundle;git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Run `vim`. You'll see some errors. Ignore them. Once started, run `:PluginInstall`

This will error. Ignore it. Exit `vim`.

### Step-2

#### On mac:

```
brew install cmake
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

#### On ubuntu:

```
sudo apt-get install cmake
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

### Step-3

run `vim` again. Profit!
