GO_VERSION := 1.23
.PHONY: install-go init-go setup
setup: install-go init-go

build:
	go build -o api cmd/main.go
# TODO add MacOS support
install-go:
	wget "https://golang.org/dl/go$(GO_VERSION).linux-amd64.tar.gz"
	sudo tar -C /usr/local -xzf go$(GO_VERSION).linux-amd64.tar.gz
	rm go$(GO_VERSION).linux-amd64.tar.gz

init-go:
	@echo 'export PATH=$$PATH:/usr/local/go/bin' >> $(HOME)/.zshrc
	@echo 'export PATH=$$PATH:$$(HOME)/go/bin' >> $(HOME)/.zshrc
	@echo "Run 'source ~/.zshrc' to apply changes in your current shell."