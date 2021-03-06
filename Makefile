containerbin:
	go get github.com/Sirupsen/logrus
	go get github.com/xtracdev/goes
	go get github.com/gucumber/gucumber/cmd/gucumber
	go get github.com/stretchr/testify/assert
	go get github.com/armon/go-metrics
	go get gopkg.in/DATA-DOG/go-sqlmock.v1
	go get golang.org/x/tools/blog/atom
	go get github.com/xtracdev/tlsconfig
	export PKG_CONFIG_PATH=$GOPATH/src/github.com/xtracdev/es-atom-replicator/pkgconfig/
	go get github.com/rjeczalik/pkgconfig/cmd/pkg-config
	go get github.com/xtracdev/oraconn
	go get github.com/aws/aws-sdk-go/...
	go test
	gucumber
	GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -o replicator ./cmd/
	cp replicator /artifacts
