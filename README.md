# vim-monokai

Fork of [crusoexia/vim-monokai](https://github.com/crusoexia/vim-monokai).
Add rich syntax highlighting, for supported language check [this section](#enhanced-syntax-highlight-support)

**NOTICE:** Please use this colorscheme under GUI mode or in the terminal with true color supported. The colorscheme doesn't support term color.

- [vim-monokai](#vim-monokai)
  - [Install](#install)
    - [vim-plug](#vim-plug)
    - [Manually](#manually)
  - [Usage](#usage)
  - [Enhanced syntax highlight support](#enhanced-syntax-highlight-support)
  - [Terminal support](#terminal-support)
  - [Configuration](#configuration)
    - [Italic](#italic)
  - [Thanks for other open source project](#thanks-for-other-open-source-project)

## Install

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'keyvchan/vim-monokai'
```

### Manually

```shell
mkdir -p ~/.vim/colors
```

Download the `colors/monokai.vim` file from the repo to `~/.vim/colors`

## Usage

Copy below command to your `~/.vimrc`:

```vim
syntax on
colorscheme monokai
```

## Enhanced syntax highlight support

As I modify some syntax file which copy from different sources, they help me improve the highlight of many language. Support language as follow:

- C/C++
- Go
- Rust
- Toml
- Swift

## Terminal support

If you are using a terminal which support truecolor like **iterm2**, enable the gui color by adding below setting in `~/.vimrc` or `~/.vim/init.vim`

```vim
set termguicolors
```

## Configuration

### Italic

By default the gui enables italic but terminal. They both can be configured.

If you are using a font support italic, paste below command in `.vimrc` to turn on terminal italic:

```vim
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
```

## Thanks for other open source project

- [fatih/vim-go](https://github.com/fatih/vim-go): Syntax file for go.
- [bfrg/vim-cpp-modern](https://github.com/bfrg/vim-cpp-modern): Syntax file for C and C++.
- [cespare/vim-toml](https://github.com/cespare/vim-toml): Syntax file for toml also with filetype detection.
- [lilyball/vim-swift](https://github.com/lilyball/vim-swift): Syntax file for swift also with filetype detection.
