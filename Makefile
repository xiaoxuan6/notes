run:
	@hexo clean && hexo g && hexo s
push:
	@hexo clean && hexo g && hexo d
	@git add . && git commit -m"wip" && git push