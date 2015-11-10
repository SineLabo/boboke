start:
	touch db.json
	rm db.json
	hexo generate --debug
	hexo server -d

deploy:
	rm db.json
	hexo generate
	hexo deploy