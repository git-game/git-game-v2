#Level 8

You made it to level 8! 
It appears you have gained a deeper knowledge of git grep!

But alas! The same malicious hackers have hidden the content of the next clue amidst the commits of two other branches.
Each of these commits has a file, one of which has the consonants of the next clue and the other has the vowels.
The hackers were nice enough to leave us with the following text:

**The first branch is arachnid. The commit is four below the `HEAD`**

**The second branch is insect. The commit is three below the `HEAD`**

In order to retrieve the two files containing the contents we will need to use the
[`git cherry-pick`](http://git-scm.com/docs/git-cherry-pick) command.
What this commands does is when given one or more existing commits, it applies the change each one introduces to our commit history,
recording a new commit for each one that was "cherry picked".

Your task is to first find out what commits to cherry pick, and then cherry pick them.
The note the hackers left should give you insight on where to find the two commits.
You can see an example of how to use `git cherry-pick` on [this stack overflow question](http://stackoverflow.com/questions/29393875/how-to-cherry-pick-from-branch-a-to-branch-b-on-a-system-without-history).

*Important*: In order for the command to work properly you must checkout to both the branches that contain the commits.
Then checkout back to the `cherry` branch and cherry-pick accordingly.
Once you do this, you are to output the file contents properly using `cat` to see how the consonants and vowels combine,
The name of the next branch will be the output that you get. Checkout the branch to continue on your journey.

*Hint*: for outputting the files properly you would want to you do something like: `cat consonants.txt && cat vowels.txt`.
The output of the above command may look a little weird at first, but remember it is one word!

*Hint*: `HEAD` is also a reference to the currently checked out commit of a branch, typically the most recent commit. 
(i.e. `HEAD~1` means 1 below the `HEAD` of a current branch while `master~1` means one below the `HEAD` of the `master` branch).
