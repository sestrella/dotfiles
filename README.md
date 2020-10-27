# dotfiles

**This project is unmaintained. My dotfiles are managed by Ansible now, check
out this [repository](https://github.com/sestrella/devbox) for more details.**

[![Build Status][travis-badge]][travis]

My configuration files

## Requirements

Install [rcm][rcm]

## Getting Started

Clone the repository:

```sh
git clone https://github.com/sestrella/dotfiles.git ~/.dotfiles
```

Copy the `rcrc` file to your home directory:

```sh
cd ~/.dotfiles
cp rcrc ~/.rcrc
```

Symlink all dotfiles:

```sh
rcup -v
```

## License

Licensed under the [MIT License](LICENSE)

[rcm]: https://github.com/thoughtbot/rcm
[travis-badge]: https://travis-ci.org/sestrella/dotfiles.svg?branch=master
[travis]: https://travis-ci.org/sestrella/dotfiles
