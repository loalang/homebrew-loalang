.SILENT:
.PHONY: update

COMPILER_DIR ?= ../loalang
VERSION ?= $(shell toml get $(COMPILER_DIR)/Cargo.toml 'package.version' | jq -r)

MAC_CHECKSUM ?= $(shell shasum -a 256 $(COMPILER_DIR)/target/dist/$(VERSION)_x86_64-macos.tar.gz | awk '{ print $$1 }')
LINUX_CHECKSUM ?= $(shell shasum -a 256 $(COMPILER_DIR)/target/dist/$(VERSION)_x86_64-linux.tar.gz | awk '{ print $$1 }')

update:
	cat loa.rb.tmpl | VERSION=$(VERSION) MAC_CHECKSUM=$(MAC_CHECKSUM) LINUX_CHECKSUM=$(LINUX_CHECKSUM) envsubst > loa.rb
