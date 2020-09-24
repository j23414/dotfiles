# Python3 on MacOS

There are many options to install python on MacOS and they tend to conflict with each other. Definitely install Python3 since Python2 should be phased out. 

* Native install - python2 automatically comes with XCode

  ```
  xcode-select -install
  python -version
  ```
  
* [Homebrew](https://brew.sh/) - preferred Mac Package manager over MacPorts

  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew install python
  ```

* [Miniconda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/macos.html) - smaller then Anaconda... similar to prefering BasicTeX over MacTex

  ```
  bash Miniconda3-latest-MacOSX-x86_64.sh
  ```

* [Install Anaconda in Homebrew](https://medium.com/ayuth/install-anaconda-on-macos-with-homebrew-c94437d63a37) - gah, whyyyy so many options?

  ```
  brew cask install anaconda
  ```

Okay, and since they each place python packages in different places. It's preferable to always use a virtual environment in python... but which one?

* venv
* conda

And list all requirements for a package in an `environment.yml` file:

  ```
  name: pyenv
  channels:
    - conda-forge
    - bioconda
    - defaults
  dependencies:
    - python=3.8
    - smof
    - jupyter
  ```
