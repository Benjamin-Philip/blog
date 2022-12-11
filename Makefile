##
# Ben's Untitled Blog
#
# @file
# @version 0.1

default: build

server: _vendor
	hugo server -D

build: _vendor
	hugo --minify

# Get modules
_vendor: go.mod go.sum
	hugo mod vendor

# end
