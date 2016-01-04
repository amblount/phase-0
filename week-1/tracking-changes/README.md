[Week 1 Home](../)

# U1.W1: Tracking Changes

## Learning Competencies

- Define "commit"
- Demonstrate best practices for commit messages
- Describe the three states of a file in git (working, staged, commit)
- Outline the process from creating a change to a commit
- Create and merge a pull request

## Summary

Git works by following all of the changes in the files inside a git tracked folder. The save point in git is called a commit. Think of a commit like a checkpoint in a video game. It is a point where you can go back to and look at the state of the files at that commit. Just like in a video game if you die at a boss or make the wrong decision, you can go back to the checkpoint. This saves the pain of starting over from the beginning. A commit is your safety net if you accidentally introduce bugs in your code. You can revert to a working state while you debug your code. It is a great idea to commit often to create more frequent save points to fall back on.

## Releases

## Release 0: Watch: What is a change?
[![Tracking Changes](http://img.youtube.com/vi/cBTs3WWMXUs/0.jpg)](http://www.youtube.com/watch?v=cBTs3WWMXUs)

## Release 1: Good Commit Messages

Because commits are 'save points', it is important to start getting in the habit of writing good commit messages so you know what each commit includes. Here is [Tim Pope's style guide](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) for commits.There's a bunch of advanced git talk here, so just focus on the first part of the post. See [this article](http://365git.tumblr.com/post/3308646748/writing-git-commit-messages) for a better explanation of why to use the imperative form of verbs.

You can type your commit messages in your terminal with `git commit -m "message goes here between the quotes"`.

You can check the commit history of a repository in the command line by typing `git log` and scroll using the up and down arrows. Exit using `q`. How would you score our git commit messages? Would you know where to look in each message to find what files were changed?

## Release 2: Tracking Changes

Whenever you change the state of a file, it is tracked. You can check the status of all the files in the local repo by typing `git status` . If you have modified any files you will see some categories: Changes not staged for commit:, Changes to be committed:, and if you have created a new file, Untracked files:. No changes would return the message:

`On branch master
nothing to commit, working directory clean`

You can only push changes that have been committed.

Git also gives you handy instructions below these categories. In untracked files it tells you how to add the files (use "git add <file>..." to include in what will be committed) from untracked to staged(changes to be committed), and how to remove a file from the added section to bring it back to untracked (use "git reset HEAD <file>..." to unstage).

If you commit some files and decide that you actually want to change the files, use the command:

`git reset --soft HEAD^`

HEAD is the commit you are currently on, HEAD^ is the last commit, HEAD~3, HEAD~4, HEAD~5, are the 3rd 4th and 5th commit from HEAD respectively.

## Release 3: Make Changes

Now you know about how git tracks changes, so it's time to make some changes to practice! First, make sure you are on the master branch before you begin.

Type `git checkout -b making-changes` to create a new branch called `making-changes`.

- Using Sublime, open the [my_reflection.md](my_reflection.md) file associated with this challenge
- Answer the first question in the reflection file - make sure to save your file
- Check your git status
- Write something in this README.md
- Check your git status (notice a pattern?)
- Add the changes you made in the my_reflection.md and README.md to the stage
- Discard the change made to the README.md
- Add and commit the changes for my_reflection.md
- Check the git log to see your commits

Make sure all of your changes are committed before moving on.

## Release 4: Pushing Changes

Now it's time to make your changes live on GitHub. There are two ways to do this, but we aren't going to cover the easiest one because it's bad practice and we've had feedback from students that it should not be included in the curriculum. **Follow these instructions carefully.**

The best practice way is by making feature branches and pull requests, which is highly favored when working with teams. We recommend using this process, because you will not be happy with yourself if you push to master at Dev Bootcamp.

Before you can push your changes up to your fork on GitHub, you'll want to make sure you don't have different versions of your repository locally and remotely. To do this, checkout your master branch by typing:

`git co master` (if you have the co shortcut working, otherwise write out "checkout")

Pull changes from the remote to your local copy by typing:

`git pull`  git pull fetches changes from the remote repository and merges them. You can also fetch and merge separately if you prefer. If it says it was already up to date, you had no changes to pull. If it pulled them, you should now see all of the changes that were on the remote repository on yours.

Now that you have the changes, you'll need to merge them into your `making-changes` branch.

Navigate to your `making-changes` branch by typing:
`git co making-changes`

Then merge the branches by typing:
`git merge master`

This merges changes into your feature branch. If you have any merge conflicts, they will probably arise here. If you need help resolving it, checkout office hours.

This will merge the changes. Sometimes it will pop up a window in Sublime, if this happens, you should update the first line with the reason for the merge, save, and then close the tab. That will allow them to merge.

Now you'll want to push a copy of your `making-changes` branch up to your fork on GitHub.Simply type:

`git push origin making-changes`
This pushes the changes from your local copy to the remote repository on GitHub. `origin` refers to the remote location (in this case your repository on Github), and `making-changes` is the branch you want to push to.

Then follow the directions on [Making Pull Requests](making-pull-requests.md) to merge  your changes into the master branch. After you merge the changes, delete that branch, then go into your terminal, check out the master, pull the changes down, and delete the old feature branch. That will keep your branches clean. We recommend having one feature branch per challenge. When you are done with the challenge, delete the branch using:

`git branch -d feature-branch-name`

This was probably confusing because it's pretty weird. If you have questions about any of these commands, please do a bit of research on them to get some clarity. As you go through Phase 0, this process will become easier, so trust in the repetition!

**In the future, whenever you start a challenge, you should create a new branch and push to that branch. When you finish the challenge, push the changes and make a pull request. Merge the pull request before moving on to the next challenge.**

## Release 5: Reflect
Now that you have pushed your changes once, go through it again to add your reflection. You'll want to start off every challenge by creating a new branch.

Go ahead and answer each of the questions in the my_reflection.md file (using Sublime). Add your changes and commit them. Make sure you make a great commit message when done with this challenge. Don't forget to push your changes, make a pull request, and merge it!

## Release 6: Practice
Remember the reflections you did for the first three challenges? Find your answers and go through the workflow to edit the reflection files for each challenge to add your answers.
