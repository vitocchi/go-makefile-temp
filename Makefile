## Sample Makefile for go project
##
## Last update
## 	2019-03-19

# define project name
# make use the project name to name binary file and run it
PROJECT_NAME=project

.PHONY: vendor

rerun:
	$(MAKE) build
	$(MAKE) run 

run:
	./$(PROJECT_NAME)

build: vendor
	go build -v -o $(PROJECT_NAME)

vendor:
	dep ensure

clean:
	rm $(PROJECT_NAME)
	rm -rf vendor
