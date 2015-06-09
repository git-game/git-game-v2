#Level 7

You made it to level 7! It appears you have gained a deeper knowledge of git grep!

But alas! The same malicious hackers have dispersed the content of the next clue amidst the commits of two unknown branches!
Each commit has a file, one which has the consonants of the next clue and the other the vowels.
The only help they left behind was the following text:

branch = 4r4cn1d --> 8/4 commits below the head

branch = 1n53ct --> 6/2 commits below the head

4 = a, 1 = i, 5 = s, 3 = e. 

Your job is to decipher what this means and safely retrieve the proper commits from each branch using ```git cherry-pick```.
Once you do this, you are to output the file contents properly using ```cat``` to see how the consonants and vowels combine.

If you need some help on ```git cherry pick``` [go here](http://git-scm.com/docs/git-cherry-pick).
*Hint:* for outputting the files properly you would want to you do something like ```cat < firstfile.txt && cat < secondfile.txt```
