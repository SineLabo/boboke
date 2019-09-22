---
title: 'Setup Python programming environment on MacOS'
date: '2018-12-16T14:38:47+08:00'
lastmod: '2018-12-16T14:38:47+08:00'
draft: false
tags: ["Python"]
categories: ["environment"]
author: 'Michael C.'
comment: true
toc: true
autoCollapseToc: true
reward: false
mathjax: false
---
## I. Introduction
Working with python is a happy thing, but as a newbie, the first barrier in front of me is how to set up a programming environment of python. This tutorial is derived from my experience and let's go through this to step on the journey of python quickly.
Usually, my working version of Python is 3.6.5, so this article get it as an example, but the general principles apply to any other 3+ version of python.

## II. Installing
### A. Python
There many ways to install Python on MacOS, and I will show my usual methods below:

[HomeBrew](https://brew.sh/) is almost a standard package manager tool on MacOS, and It can Install nearly any software you need, certainly including python3.
Assuming you have installed brew and haven't installed python3 before on your macOS. Just running this to get the **latest** version of python3 and pip3:
```bash
brew install python
```
However, not everyone wants to use the newest version in some situation, like me. I want to use the 3.6.5 as my default version because of considering the compatibility of my projects.

HomeBrew can also install an earlier version of a software, but the method is not friendly enough in my opinion.
You have to find the formula of the earlier version from the formula history of the [homebrew-core](https://github.com/Homebrew/homebrew-core) repository, like python's version history is in this [page](https://github.com/Homebrew/homebrew-core/commits/master/Formula/python.rb).
Clicking the commit identifier of 3.6.5_1 and find the raw file [URL](https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb) of that, then run this command below:
```bash
brew unlink python # If you have installed (with brew) another version of python
brew install --ignore-dependencies https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb
```
After installing it, running this to see what versions you already have:
```sh
brew list --versions python
```
We can change the version of python3 by doing this:
```sh
brew switch python <version>
```
Although we can change the version of python by brew, if you have multiple projects use the same version of python and them dependent the same lib but a different version, this will always make some problems.
In this situation, we need another powerful tool to isolate them,  that is the Virtalenv.
### B. Virtualenv
This tool can ensure that each of your projects has its own set of dependencies that won’t disrupt any of your other projects.
Install it via pip:
```sh
pip install virtualenv
```
Following on the installing, we are not eager to use it, because we haven't installed its outstanding brother extension that is the virtualenvwrapper.

### C. Virtualenvwrapper
Virtualenvwrapper provides a set of commands which makes working with virtual environments much more pleasant. It also places all your virtual environments in one place.
To install:
```bash
pip install virtualenvwrapper
```

## III. Usage

## IV. Conclusion
## V. References
- ePi272314's answers: [https://stackoverflow.com/questions/51125013/how-can-i-install-a-previous-version-of-python-3-in-macos-using-homebrew][stackoverflow]

[stackoverflow]: https://stackoverflow.com/questions/51125013/how-can-i-install-a-previous-version-of-python-3-in-macos-using-homebrew
[1]: https://python-guide-cn.readthedocs.io/en/latest/dev/virtualenvs.html
[2]: https://medium.com/@gitudaniel/installing-virtualenvwrapper-for-python3-ad3dfea7c717
[4]: https://gist.github.com/IamAdiSri/a379c36b70044725a85a1216e7ee9a46
[5]: https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-debian-8
