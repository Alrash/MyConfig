#!/bin/sh

rm -rf awesome-terminal-fonts && git clone -b patching-strategy git@github.com:gabrielelana/awesome-terminal-fonts.git && cp awesome-terminal-fonts/patched/* ~/.fonts && sudo fc-cache -rv && rm -rf awesome-terminal-terminal
