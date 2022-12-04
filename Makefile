run:
	@hexo clean && hexo g && hexo s
push:
	@hexo clean && hexo g && hexo d