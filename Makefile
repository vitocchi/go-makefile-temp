## Sample Makefile for go project
##
## Last update
## 	2019-03-19

# define project name
# make use the project name to name binary file and run it
PROJECT_NAME=project

run:
	./$(PROJECT_NAME)

build: vendor
	go build -v -o $(PROJECT_NAME)

vendor:
	dep ensure
