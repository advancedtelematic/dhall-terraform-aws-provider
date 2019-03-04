build:
	docker build . -t alexhumphreys/dhall-terraform-aws-provider

run: build
	docker run --rm -it -v $(CURDIR)/schema:/usr/src/app/schema alexhumphreys/dhall-terraform-aws-provider

run-interactive: build
	docker run --rm -it alexhumphreys/dhall-terraform-aws-provider bash
