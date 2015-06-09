#Level 5
Welcome to level 5.
This level isn’t as *pretty* as you might want it to be but it teaches a new way to view the log.
Your first step is to find out what [flags are needed for ```git log```](http://git-scm.com/docs/git-log)
to find the [tree hashes](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects) of the tree objects in this repository.

Once you find the appropiate flags your next step is to use them to find the commit message associated with the tree hash *3331d0b*.

After finding the correct commit message, checkout to the branch of the same name as the message.
It should only be one word!

Hint: There are many different flags that can be associated with git log. Outputting using [pretty](https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History) is most likely what you should be looking for.
