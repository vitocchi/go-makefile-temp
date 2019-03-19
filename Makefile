# sample Makefile for go project
#
# define project name
# make use the project name to name binary file and run it
PROJECT_NAME=project

run:
	./websocket-chat

build: vendor
	go build -v -o websocket-chat

vendor:
	dep ensure
