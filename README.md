#Level 7

You made it to level 7! It appears you have gained a deeper knowledge of git grep!

But alas! The same malicious hackers have hid the content of the next clue amidst the commits of two branches.
Each commit has a file, one which has the consonants of the next clue and the other the vowels.
The hackers were nice enough to give us the branch names, but they never told us how many commits they hid the content. 
All they left was the following text:

branch = arachnid. Four below the HEAD

branch = insect. Three below the HEAD

Your job is to decipher what this means and safely retrieve the proper commits from each branch using ```git cherry-pick```.
Once you do this, you are to output the file contents properly using ```cat``` to see how the consonants and vowels combine.

If you need some help on ```git cherry pick``` [go here](http://git-scm.com/docs/git-cherry-pick).

*Hint:* for outputting the files properly you would want to you do something like:

```cat < consonants.txt && cat < vowels.txt```. 

HEAD is also a reference to the currently checked out commit of a branch, typically the most recent commit. 
(i.e. HEAD~1 means 1 below the HEAD).
