#!/bin/bash

GOOS=linux CGO_ENABLED=1 GOARCH=amd64 VERSION="test" go build -v -trimpath -tags "with_reality_server" \
-o ./execution/sing-box  -ldflags "-X \"github.com/sagernet/sing-box/constant.Version=$VERSION\" -s -w -buildid=" \
./cmd/sing-box