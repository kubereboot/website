# Fast NONBlOCKING IO to stdout can
# cause Netlify builds to terminate unexpectantly. This forces stdout to block.
BLOCK_STDOUT_CMD           := python -c "import os,sys,fcntl; \
                                           flags = fcntl.fcntl(sys.stdout, fcntl.F_GETFL); \
                                           fcntl.fcntl(sys.stdout, fcntl.F_SETFL, flags&~os.O_NONBLOCK);"
HUGO_BIND_ADDRESS          ?= 127.0.0.1

help:  ## Display this help menu.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
.PHONY: help

gen-content:
	./hack/gen-content.py

serve: gen-content ## Spawns a development server.
	hugo server \
		--bind ${HUGO_BIND_ADDRESS} \
		--buildDrafts \
		--buildFuture \
		--disableFastRender

production-build: gen-content ## Builds production build.
	hugo \
		--baseURL $(URL) \
		--gc \
		--minify \
		--enableGitInfo

preview-build: gen-content ## Builds a preview build (for e.g. a pull requests).
	hugo \
		--baseURL $(DEPLOY_PRIME_URL) \
		--buildFuture \
		--gc \
		--minify \
		--enableGitInfo

branch-build: gen-content ## Builds a Git branch (for e.g. development branches).
	hugo \
		--baseURL $(DEPLOY_PRIME_URL) \
		--buildDrafts \
		--buildFuture \
		--gc \
		--minify \
		--enableGitInfo
