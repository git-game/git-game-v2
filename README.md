#Level 9

The hackers have finally have left!
But before they escaped they ruined the lyrics of our favorite song *twinkle twinkle little star*!
The hackers changed the lyrics of our favorite song from *twinkle twinkle little star* to *racecar racecar little star*.
Your task is as follows: use [`git bisect`](http://git-scm.com/docs/git-bisect) to repair the lyrics to their original format.
Since there are so many commits, we can use `git bisect` to find the bug by using a binary search on our commit history.

*Note*: Next, we recommend that you open a second terminal.

`git bisect` needs a starting point before the error was introduced since we need to know the bounds for the binary search.
The first step is to initalize `git bisect` by typing in `git bisect start` which will begin the searching process.
Next, run the command `git log --pretty=oneline --reverse | head -1`. This will automatically give you the commit hash of the initial commit.
Then you should run `git bisect good` followed by the inital commit hash. This gives the first bound for the binary search.

Next run the following command in the second terminal: `git log --pretty=oneline --reverse | tail -1`. This gives you the commit hash of the most recent commit.
Then run `git bisect bad` followed by the commit hash of the most recent commit. This gives the second bound for the binary search.

At this point, git bisect will now execute the binary search traversing through history.
As you are traversing through the commits, cat the `twinkle.txt` file,  if you see the words racecar within the file, type the command `git bisect bad`, indicating that the error is within this half of the commits.
If you do not see the words *racecar* and instead see *twinkle*, that represents a good commit since the error was not yet introduced before that point. You should type the command `git bisect good`.
If the `twinkle.txt` is not present and it's just the `README.md` in the directory, this represents a point in time that the file did not exist.
This means no error existed either, so therefore you would type in `git bisect good`.

Once `git bisect` gives you the message `is the first bad commit`, run the `ls` command.
If there is a file named **message** view its contents to proceed forth to glory!
If not, run `git bisect reset` and restart the process.

*Hint*: If you are still having trouble, here is a wonderful tutorial on how to use [`git bisect`](http://www.metaltoad.com/blog/beginners-guide-git-bisect-process-elimination).
