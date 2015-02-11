.PHONY: all
all:
	docker pull haskell
	docker pull ruby
	docker pull node
	docker build -t "dragonflyscience/website-sass" stylesheets
	docker build -t "dragonflyscience/website-scripts" scripts
	docker build -t "dragonflyscience/website-hakyll" hakyll