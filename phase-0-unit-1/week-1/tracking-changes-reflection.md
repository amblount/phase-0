###Tracking Changes

- How does tracking and adding changes make developers' lives easier?

Tracking changes help a developers life by allowing developers to take risks and make changes. If a developer was too afraid of breaking something they might not experiment but with version control developers can pretty much roam freely and know that there will be working versions and old and updated copies of the software saved.

What is a commit?

'''
"A commit is a snapshot of your code" it is like a saved version that is timestamped and you can use the database version copy to come back to at anytime.
'''

What are the best practices for commit messages?

Commit messages should have descriptive to the point phrases that tell what exactly it is that you changed.

What does the HEAD^ argument mean?

The HEAD is a pointer that holds your position within all your different commits. By default HEAD points to your most recent commit, so it can be used as a quick way to reference that commit without having to look up the SHA.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

untracked:Files aren't tracked by Git yet. This usually indicates a newly created file.
You can use git add file_name to track the file by adding it to the staging area. When you type git add file_name The files listed under chnages to be committed are in the Staging Area, and they are not in our repository yet. We could add or remove files from the stage before we store them in the repository.

unstaged:Files with changes that have not been prepared to be committed.
These are files that have been updated but the updates are not a part of the staging area yet.

staged:Files are ready to be committed.
These are files that have been modified to the point of current progress completion and should be saved on git. To store our staged changes we run the commit command with a message describing what we've changed.

Write a handy cheatsheet of the commands you need to commit your changes?

git status
git add .
git commit -m 'write a message here'
git status

What is a pull request and how do you create and merge one?

A pull request is a request to merge the working copy with the master. You create a pull request on github.com/profile/repo and you click the pull requet icon after you have pushed from the command line. The requests that you made on the command line must match up with the requests that you made online so that you must be inside of the same project or repo in both places. Something I missed the first few tries.

Why are pull requests preferred when working with teams?

So that before you save your work into the master copy there is someone else to check and review the code to make sure that it is functional.