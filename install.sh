#!/bin/sh

sh -c script/base.sh 
sh -c script/archlinuxcn.sh && sh -c script/others.sh && sh -c script/vim.sh
sh -c script/php.sh
sh -c script/sql.sh
sh -c script/getFonts.sh
