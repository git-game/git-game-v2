# git-game-v2

This repo is the sequel to the [git-game](https://github.com/git-game/git-game).
There are nine levels, and each level teaches you about one of git's more advanced features.
In particular, you'll learn how to use the commands:

* `git ls-files`                  
* `git cherry-pick`               
* `git bisect`                    
* `git show`          
* `git shortlog`                  
* `git submodule`
* `git describe`                  
* `git log`           
* `git grep`

Let’s begin! 
First, clone this repository using the command below:
```
$ git clone https://github.com/git-game/git-game-v2.git
```

**You can win a badge for completing this game!**
learn more about badges here: https://openbadgefactory.com/faq

You're now ready to start level1.
Good luck!

## Level 1

The first level demonstrates the power of `git ls-files`.
Running `git ls-files` lists all the files in the current commit.
Checkout the [documentation](http://git-scm.com/docs/git-ls-files) for more details.
Can you figure out why running the standard Unix `ls` doesn't list all the files in the current commit?

Your task for this level is to use `git ls-files` to count the total number of *lines* in this commit.
In other words, count the number of lines in each file, then add all these numbers together to get the total.

To advance to level 2 you need to checkout the branch named after the total. 
So if the total number is 780 then you would run:
```
$ git checkout 780
```

*Hint:* 
You will need to combine `git ls-files` with other Unix utilities using pipes. 
[This stackoverflow question](http://stackoverflow.com/questions/4822471/count-number-of-lines-in-a-git-r) has a useful example that will get you started.
