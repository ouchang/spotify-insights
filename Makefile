goModules=on

VERSION:=`cat VERSION`

datacollector_dir=datacollector
datacollector_build=$(datacollector_dir)/_build
datacollector_bin=datacollector

build_datacollector:
	GOARCH=amd64 GOOS=linux go build -o $(datacollector_build)/$(datacollector_bin)-$(VERSION) $(datacollector_dir)/main.go

build_datacollector_docker: build_datacollector
	docker build --build-arg VERSION=$(VERSION) -t spotify-insights-datacollector:$(VERSION) -f $(datacollector_dir)/docker/Dockerfile $(datacollector_dir)
