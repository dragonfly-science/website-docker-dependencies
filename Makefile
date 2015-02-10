.PHONY: all
all:
	docker pull haskell
	docker pull ruby
	docker pull node
	docker build -t "dragonflyscience/website-sass" stylesheets
	docker build -t "dragonflyscience/website-javascript" scripts
	docker build -t "dragonflyscience/website-haskell-build" haskell-build