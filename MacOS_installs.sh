#! /usr/bin/env bash
# Auth: Jennifer Chang
# Date: 2020-06-15
# Desc: Installation instructions for MacOS, to set up my main programming env

set -e
set -u

# ===== XCode Commandline Tools, necessary before anything else
xcode-select —install

# ===== Homebrew, the package manager
# docs: https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew upgrade

# ===== pkgs
brew install emacs         # my preferred editor
brew install git           # setup github env
brew install curl          # fetch files from a URL address
brew install parallel      # enable multi-threaded bash scripts

# ===== Other Installs
# R           https://cran.r-project.org/
# RStudio     https://rstudio.com/
# BasicTex    https://tug.org/mactex/morepackages.html
# Atom        https://atom.io/
# Scrivener   https://www.literatureandlatte.com/store/scrivener?tab=macOS  (paid license)

# TASSEL 2020/10/15
cd ~/bin/src
[[ -d tassel-5-standalone ]] || git clone https://bitbucket.org/tasseladmin/tassel-5-standalone.git
# Create a tassel bash file in bin
# #! /usr/bin/env bash
# ~/bin/src/tassel-5-standalone/run_pipeline.pl "$@"
# USAGE: tassel [rest of run_pipeline arguments]
