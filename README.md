#Level 9

The [hackers](http://en.wikipedia.org/wiki/Anonymous_%28group%29) finally have left!
But before they escaped they ruined the lyrics of our favorite song!
Your task is as follows: use [```git bisect```](http://git-scm.com/docs/git-bisect) to repair the lyrics to their original format.
Now I know what you're thinking, why not use a linear search to find where they destroy the lyrics?

Well with ten thousand commits this is nearly impossible!

But ```git bisect``` uses binary search, a much faster search algorithm that repeatedly cuts the search range in half until it finds what it needs!

The first step is to initalize git bisect by typing in ```git bisect start```.
This begins the git bisect process.
Next, we recommend you open a second terminal and run the command ```git log --pretty=oneline --reverse | head -1```.
That will automatically give you the commit hash of the initial commit.
Then you should run ```git bisect good``` and type in the initial commit hash given by the command above.
Git bisect needs a starting point before the error was introduced.
Next run the following command in the second terminal: ```git log --pretty=oneline --reverse | tail -1```.
This gives you the last commit hash (no one wants to traverse 10,000 commits one by one to get to the last).
Then run ```git bisect bad``` and type in also the hash of the last commit after typing in git bisect bad.
What this does is gives git bisect an ending point where the error is definitely inside the recent commits.

At this point, git bisect will now execute the binary search traversing through history.
The [hackers](http://en.wikipedia.org/wiki/Anonymous_%28group%29) changed the lyrics of our favorite song from ```twinkle to racecar```.
As you are traversing through the commits, cat the ```test.txt``` file,  if you see the words racecar within the ```test.txt``` file, type in ```git bisect bad``` indicating that the error is within this half of the commits.
If you do not see the words racecar and you see twinkle, that represents a good commit as the error commit was not introduced before that point. You would type ```git bisect good```. If the ```test.txt``` is not present and it's just the README in the directory this represents a point in time that the ```test.txt``` file did not exist.
This means no error existed either, so therefore you would type in ```git bisect good```.

Once the process says it has found the error commit, run ```ls```.
If there is a file named message view its contents to proceed forth to glory!
If not, run ```git bisect reset``` and repeat as much as necessary until the correct answer is reached and the file is viewable.

*Hint: * If you are still having trouble, here is a wonderful tutorial on how to use ```git bisect``` http://www.metaltoad.com/blog/beginners-guide-git-bisect-process-elimination
