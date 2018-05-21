.PHONY: all
all: build
	@echo Build completed successfully.

.PHONY: configure configure-node
configure: configure-node
configure-node:
	npm install

.PHONY: build build-node
build: build-node
build-node: configure-node
	npm run build
	cd dist && npm pack .. && cd -

.PHONY: check
check: build
	@echo Starting check stage...

.PHONY: deploy
deploy: install check
	@echo Starting deploy stage...
