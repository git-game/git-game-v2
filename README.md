#Level 2

You're now in level 2! The purpose of this level is to *show* you the power of `git show`. 
Running this command shows one or more objects ([blobs](http://gitready.com/beginner/2009/02/17/how-git-stores-your-data.html),
[trees](http://365git.tumblr.com/post/492744368/git-objects-the-tree),
[tags](http://git-scm.com/docs/git-tag), and [commits](http://gitref.org/basic/)).
Look at the [documentation](http://git-scm.com/docs/git-show) for more details.

Your task for this level is to find the answer to the riddle below:

> I have many keys but useless locks. I have space but no room. You can enter and also escape. What am I?

The answer to this riddle is in one of the commit messages.
Use `git log` to find the commit hash corresponding to the commit message.
Then run `git show` on that hash.
This will bring up instructions on how to proceed to level3.

*Hint:* if you're stuck, look at this [stack overflow question](http://stackoverflow.com/questions/7663451/view-a-specific-git-commit).
