#!/bin/bash

GO_VERSION="1.8.3"
GO_DOWNLOAD="https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz"

GOPATH=$HOME"/go"
GOBIN=$GOPATH"/bin"
mkdir -p $GOPATH $GOBIN
mkdir -p $HOME/go/{src,pkg}

cd $DOT_TEMP

echo "Downloading $GO_DOWNLOAD ..." | tee_log
wget $GO_DOWNLOAD -O "go.tar.gz" | tee_log
sudo tar -C /usr/local -xzf "go.tar.gz" | tee_log
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bash_profile | tee_log
echo "export GOPATH=\"\$HOME/go\"" >> ~/.bash_profile | tee_log
echo "export GOBIN=\"\$GOPATH/bin\"" >> ~/.bash_profile | tee_log
echo "export PATH=\$PATH:\$GOBIN" >> ~/.bash_profile | tee_log
echo "Done installing golang..." | tee_log

source ~/.bash_profile

go get -u -v github.com/nsf/gocode | tee_log
go get -u -v github.com/rogpeppe/godef | tee_log
go get -u -v golang.org/x/tools/cmd/guru | tee_log
go get -u -v golang.org/x/tools/cmd/gorename | tee_log
go get -u -v golang.org/x/tools/cmd/goimports | tee_log
go get -u -v github.com/alecthomas/gometalinter | tee_log
go get -u -v github.com/godoctor/godoctor | tee_log
gometalinter --install --update
go install github.com/godoctor/godoctor

cd ~
