#!/bin/bash

if ! command -v subl &>/dev/null; then
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
    sudo apt-get update
    sudo apt-get install sublime-text-installer
fi
