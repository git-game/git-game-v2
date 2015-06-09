#Level 6

You made it to level 6! Awesome!!!

But it appears we have a problem!
A group of malicious hackers have hacked GitHub and deleted an important file in our repo.
This file contained the hidden personal email of Linus Torvalds and his partners!
They also made hundreds commits after so we can't look through the commit history by hand.
This file also contained the clue to the next level, and without it you cannot advance unless you want to spend years manually looking for it.

You must use [```git grep```](http://git-scm.com/docs/git-grep) to search through the whole commit history to find these emails.
The clue you are looking for is the longest of these emails that will be displayed.
The instructions should be clear on how to advance from there.

*Hint:* It's best to use git grep with git rev-list as specificied by [this](http://stackoverflow.com/questions/2928584/how-to-grep-search-committed-code-in-the-git-history) stack overflow post.
