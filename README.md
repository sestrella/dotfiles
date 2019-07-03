# dotfiles

[![Build Status][travis-badge]][travis]

My configuration files

## Requirements

Install [rcm][rcm]

## Getting Started

Clone the repository:

```
$ git clone https://github.com/sestrella/dotfiles.git ~/.dotfiles
```

Copy the `rcrc` file to your home directory:

```
$ cd ~/.dotfiles
$ cp rcrc ~/.rcrc
```

Symlink all dotfiles:

```
$ rcup -v
```

## License

Licensed under the [MIT License](LICENSE).

[rcm]: https://github.com/thoughtbot/rcm
[travis-badge]: https://travis-ci.org/sestrella/dotfiles.svg?branch=master
[travis]: https://travis-ci.org/sestrella/dotfiles
