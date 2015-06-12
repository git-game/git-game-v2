#Level 7

You made it to level 7! Awesome!!!

Are you ready for an even bigger git challenge? Yes? Okay!
It appears that a group of malicious [hackers](http://www.catb.org/jargon/html/H/hacker.html) have hacked GitHub and deleted an important file in our repo.
This file contained the personal emails of [Linus Torvalds](http://en.wikipedia.org/wiki/Linus_Torvalds), [Richard Stallman](http://en.wikipedia.org/wiki/Richard_Stallman), and the name of the next branch!
They also made hundreds commits after they deleted it so we can't look through the commit history by hand.
Now this is where you come in!

You must use [`git grep`](http://git-scm.com/docs/git-grep) to search through the whole commit history to find these emails.
Your next clue is the name of the user that is before the domain name `hint.edu`. 
When you find it checkout the branch name that shares this name.

For example, if the email was `yahoo@hint.edu` then you are to checkout the the branch called `yahoo`.

*Hint:* It's best to use `git grep` with `git rev-list` as specificied by [this stack overflow question](http://stackoverflow.com/questions/2928584/how-to-grep-search-committed-code-in-the-git-history).

*Hint:* If you followed the link in the above hint, **DO NOT** use the `--all` option.
