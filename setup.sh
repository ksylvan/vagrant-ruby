#!/bin/sh
TOP=/vagrant
cd $TOP
if [ -d ruby ]
then
  cd ruby
  git pull
else
  git clone git://github.com/ruby/ruby.git
fi
