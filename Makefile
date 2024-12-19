ORG ?= mydraft.org
DOCKRUN ?=
include mk/yang.mk
RFC_NAME := $(shell sed -e '/^\#+RFC_NAME:/!d;s/\#+RFC_NAME: *\(.*\)/\1/' $(ORG))

.PHONY: setup
setup:
	git subtree add --prefix mk https://github.com/choppsv1/yang-org-make.git master --squash

.PHONY: RFC_NAME
RFC_NAME:
	@echo $(RFC_NAME)
