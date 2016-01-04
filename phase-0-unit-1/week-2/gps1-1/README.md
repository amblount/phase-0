# GPS 1.1 Git work flow and branching

## Learning Competencies
- Use git from the terminal
- Fork and clone a repository
- Add and commit messages
- Outline a git workflow
- Submit and review a pull request
- Explain what a git branch is and its purpose
- Merge branches together
- Resolve a merge conflict


## Summary

Welcome to the wonderful world of git work flow. We are going to work through a simple git challenge, including making branches, merging, pull requests and merge conflicts.

Make sure that you use all the resources available to you, your pair, the git docs [git SCM](http://git-scm.com/documentation) and your guide.

## Releases

## Release 0: Create your repo

Choose 1 member of your pair and create a new repo called phase-0-gps-1. Initialize this with a README and add the MIT license. If open source licensing is all Greek to you, read [this article](http://choosealicense.com/) after the session.

Navigate to the settings of the repo (right side of the page). Add your pair as a collaborator on this project so they can push to the repo.

## Release 1: Clone the Repo

The driver will clone this repo to their computer and add another file called awesome_page.md to the directory (touch is a great command if you want to create files through the terminal). Add, commit and push this to your master. Now we have a base project to work with.

Navigator can now clone this repo as well.

## Release 2: Create a Feature Branch

Now the driver will create a feature branch called `add-command-log`. To create a branch use this command:

  `$git checkout -b branch-name`

You can read all about the checkout command and options with this command:

  `$git checkout --help`

This can be used to explore the capabilities of any git command.

Change the readme.md to log the terminal commands that you have used so far. Add a brief description of each command for future reference.

After you've made the changes, push your branch to GitHub. When you navigate to the GitHub page you will notice a new button! GitHub is smart enough to know that if you push a new branch up, you probably want to submit a new pull request. Click the green button to initiate the process.

GitHub has many features that make it stand out in the source control management business. Along with your commit message, you can expand on your pull request in the comment box, @tag other GitHub users, and insert emojis using :word: notation (important). You can also browse the 'diff' by clicking the files changed button. The commit tab allows you to browse different code states by commit. If you look at the files changed tab, you can leave line comments on the code by hovering over the code and clicking the '+' that appears near the line numbers. Features like this are what makes GitHub a multi-million dollar company!

Now that you are an expert in the social aspects of GitHub, take some time to talk about why you would bother creating a feature branch in the first place. Make sure you could explain what a branch is, how to create one, and how to navigate between them.

## Release 3: Review the pull request

The navigator shall now navigate to the pull request screen (ctrl+f pull request if you can not find the button). Check out the conversation tab and the files changed to see what exactly you are letting into your code base. Play with the features GitHub gives you and when you are ready, merge the pull request.

## Release 4: Fetch and Merge

Switch driver and navigator roles, the other partner will now make some modifications. There are currently changes on the GitHub repo that need to be incorporated locally. Fetch and merge the changes to your local repository. (git fetch \<remote\> \<branch\>, git merge \<remote\>/\<branch\>)

Make a new branch, and make some changes to awesome_page.md. Show off some of your markdown [ GitHub flavored markdown](https://help.github.com/articles/markdown-basics/) skills. Make something **bold**, *italic*, `some sort of code block` and a [link](http://daringfireball.net/projects/markdown/syntax). Add and commit your changes for awesome_page.md, push your branch to GitHub.

Make a pull request like last time. The navigator should review the diff of the request and merge it. You will be using this work flow all the time as a developer!

## Release 5: Merge Conflict
Sometimes you will encounter merge conflicts, but don't worry, once you've gone through a few, they aren't scary, so it's good to get practice now!

A merge conflict happens when two branches change the same file and try to merge them together. Here is how to create a small merge conflict:

1. Create a branch called small-conflict, make any change in awesome_page.md, add and commit.
2. Check out the master branch. In the same place that you made a change on awesome_page on the branch small-conflict, make a different change. Add and commit this change.
3. Merge the small-conflict branch to the master.

You should get a message saying that there was a conflict that prevented the merge. Type `git status` to see what is going on, then open the awesome_page.md and see what a conflict looks like.

You should see some notation added that looks something like this:

```
<<<<<<<<<<<HEAD<<<<<<<<<<<<<<<<<<

some_code

==================================

other_code

>>>>>>>>>>>>>small_conflict>>>>>>
```

You will have to choose what you want to keep, some_code or other_code. Delete everything else ( ====, <<< and >>> ) that you do not need. Add and commit, merge conflict resolved!

You can imagine that in a big project, this can be a huge time waster. Good git work flow can prevent merge conflicts from being a problem.

Review [this](http://stackoverflow.com/questions/16490873/how-to-avoid-git-conflicts-in-a-team) discussion about preventing merge conflicts. It's good to keep in mind as you move forward with your git education.

## Release 6: Discuss

Confer with your partner and guide about what a good git work flow is, the purpose of git branching, feature branching, and pull requests. You are in the group of elite git users now!

## Release 7: Reflect
On your own, reflect on this challenge in the [my_reflection.md](my_reflection.md) file.
