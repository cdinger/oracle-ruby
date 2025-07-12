# Oracle-ized ruby image

This base image includes the ruby version in the docker tag (ghcr.io/cdinger/ruby:3.4 includes ruby 3.4) along with oracle client libraries (and their dependencies).

## Build all ruby versions

`script/build` will build and publish all currently supported ruby versions (3.2, 3.3, 3.4).

## Ruby versions

The list of versions to be built lives in `lib/ruby.rb`. When new versions are released (or when old versions are no longer supported), modify this file.
