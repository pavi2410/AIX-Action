#!/bin/sh -l

set -eu

apt-get update && apt-get install -y \
  ant \
  git \
  openjdk-8-jdk

git clone https://github.com/mit-cml/appinventor-sources.git
git submodule update --init

cp -r src/** appinventor-sources/appinventor/components/src

cd appinventor-sources/appinventor/
ant extensions
cd ../..
