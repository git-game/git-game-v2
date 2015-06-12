#Level 5

Welcome to level 5.
This level isn’t as *pretty* as you might want it to be but it teaches a new way to view the log.
The objective is to find the options to pass into this command `git log [<options>]`. 
This [link]() will help you in finding the options needed to pass into `git log [<options>]`.
The options you are to pass will allow you to view the tree hashes of the tree [object](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects) is in git repository.

Once you find the appropiate flags your next step is to use them to find the commit message associated with the tree hash *3331d0b*.

After finding the correct commit message assicaited with the above hash, checkout the branch of the same name as the message.
It should only be one word!

*Hint*: There are many different flags that can be associated with git log. 
Outputting using [pretty](https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History) is most likely what you should be looking for.

*Extra*: If you want to further you understanding of git objects, you can read about how [git stores these objects](http://alblue.bandlem.com/2011/08/git-tip-of-week-objects.html).
