# DummyJenkins

* Jenkins CMD
1. Select freeStyle project
2. in Configuration
	a. Set Git as "Source Code Management" & set git Repository path with URL & Credentials.
	b. By default it will take master branch
	c. fill "* * * * *" in Poll SCM Schedule of "Build Triggers" section


* Use below cmd for tagging
git tag -a v0.X -m "my version 0.X"
git push origin v0.X
