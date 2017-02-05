VERSION=1.2

build:
	docker build -t telegraf .

run-it:
	docker run --rm --name telegraf -it --entrypoint bash telegraf

run:
	docker run --rm --name telegraf -p 4242:4242 telegraf

push:
	docker tag telegraf titilambert/telegraf:latest
	docker tag telegraf titilambert/telegraf:$(VERSION)
	docker push titilambert/telegraf:latest
	docker push titilambert/telegraf:$(VERSION)
