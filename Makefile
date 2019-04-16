## Sample Makefile for go project
##
## Last update
## 	2019-03-19

# define project name
# make use the project name to name binary file and run it
PROJECT_NAME=project

.PHONY: vendor

rerun:
	$(MAKE) install
	$(MAKE) run 

run:
	$(PROJECT_NAME)

install: vendor
	go install

vendor:
	dep ensure

clean:
	rm $(GOPATH)/bin/$(PROJECT_NAME)
	rm -rf vendor
