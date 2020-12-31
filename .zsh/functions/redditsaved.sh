redditsaved() {
	redditURL=https://www.reddit.com/user/$1/saved
	gallery-dl "$redditURL"
	xdg-open "$redditURL"
}
