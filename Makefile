goModules=on

VERSION:=`cat VERSION`

datacollector_dir=datacollector
datacollector_build=$(datacollector_dir)/_build
datacollector_bin=datacollector

dataanalyser_api_dir=dataanalyser_api
dataanalyser_api_build=$(dataanalyser_api_dir)/_build
dataanalyser_api_bin=dataanalyser_api

ui_frontend_dir=ui_frontend
ui_passport_spotify_dir=ui_passport_spotify

build_datacollector:
	GOARCH=amd64 GOOS=linux go build -o $(datacollector_build)/$(datacollector_bin)-$(VERSION) $(datacollector_dir)/main.go

build_datacollector_docker: build_datacollector
	docker build --build-arg VERSION=$(VERSION) -t spotify-insights-datacollector:$(VERSION) -f $(datacollector_dir)/docker/Dockerfile $(datacollector_dir)

build_dataanalyser_api:
	GOARCH=amd64 GOOS=linux go build -o $(dataanalyser_api_build)/$(dataanalyser_api_bin)-$(VERSION) $(dataanalyser_api_dir)/main.go

build_dataanalyser_api_docker: build_dataanalyser_api
	docker build --build-arg VERSION=$(VERSION) -t spotify-insights-dataanalyser_api:$(VERSION) -f $(dataanalyser_api_dir)/docker/Dockerfile $(dataanalyser_api_dir)

build_ui_frontend:
	docker build --build-arg VERSION=$(VERSION) -t spotify-insights-ui_frontend:$(VERSION) -f $(ui_frontend_dir)/docker/Dockerfile $(ui_frontend_dir)

build_ui_passport_spotify:
	docker build --build-arg VERSION=$(VERSION) -t spotify-insights-ui_passport_spotify:$(VERSION) -f $(ui_passport_spotify_dir)/docker/Dockerfile $(ui_passport_spotify_dir)