build:
	docker build . -t scraper

run: build
	docker run --rm -it scraper
