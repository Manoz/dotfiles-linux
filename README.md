<img src="https://user-images.githubusercontent.com/1554207/80279462-26dc2c00-86fe-11ea-9169-545c5dad6f25.png" alt="Dotfiles Linux banner"/>


## 🤖 Introduction

This repository is a fork of [HiDeoo's](https://github.com/HiDeoo/dotfiles) dotfiles for my Linux (Fedora) environment.  

It uses [Prezto](https://github.com/sorin-ionescu/prezto), the configuration framework for Zsh.   It will be automatically installed if not detected.

## ☕️ Quick start

```
$ git clone https://github.com/Manoz/dotfiles-linux
$ cd dotfiles-linux
$ chmod +x configure install
```

> Note: Make sure to backup your existing dotfiles or add all your configurations in this repository before using the configure script as it will erase the current ones.

Use either the configure or install script:

```
$ ./configure
```

```
$ ./install
```

## `configure` script

The dotfiles installation is made using [Dotbot](https://github.com/anishathalye/dotbot). The `configure` script will automatically call Dotbot using the `.configure.yaml` file which contains all steps of the process.

## `install` script

This script basically install every apps I need on my Linux environment. It will launch the following scripts located in the `setup` folders:  

* `apps.sh`: install various apps for Fedora environment. This is the file to edit to define all apps you want to install on your system.
* `nvm.sh`: install NVM
* `node.sh`: install the latest stable version of Node.js using NVM and install various global packages. This is the file to define all the global packages you want to install
