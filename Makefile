##
# Ben's Untitled Blog
#
# @file
# @version 0.1

.PHONY: default
default: server

.PHONY: gh-pages
gh-pages: build ping

server: _vendor
	hugo server -D

build: _vendor
	hugo --minify

.PHONY: ping
ping:
	curl --silent -G https://www.google.com/ping\?sitemap\=https://benjamin-philip.github.io/blog/sitemap.xml

# Get modules
_vendor: go.mod go.sum
	hugo mod vendor

# end
