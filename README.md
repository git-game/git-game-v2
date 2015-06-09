#Level 7

You made it to level 7! It appears you have gained a deeper knowledge of git grep!

But alas! The same malicious hackers have dispersed the content of the next clue amidst the commits of two unknown branches!
One has the consonants of the name of the next branch to checkout and the other has the vowels. 
The only help they left behind was the following text:

branch = the type of bug a spider is --> 8/4 commits below the head
branch = the type of bug an ant is --> 6/2 commits below the head

Your job is to decipher what this means and safely retrieve the proper commits from each branch using ```git cherry-pick```.
Once you do this, you can output the file contents properly using ```cat```.
If you need some help on ```git cherry pick``` [click here](http://git-scm.com/docs/git-cherry-pick).
*Hint:* for outputting the files properly you would want to you something like ```cat < firstfile.txt && cat < secondfile.txt```
