#Recognize Useful Git Vocabulary Terms
#We're about to get busy learning Git, but we first need to establish some common vocabulary. Git, perhaps more than any other software, has some special words that you'll hear a lot. Don't worry if you're not sure how some of these terms work in practice—that part will come later.
#repository (or repo, for short): A directory of files that are tracked by Git.

#track: When a file is tracked by Git, it means that Git will notice any changes to that file. We call these changes "differences" or "diffs". Git will allow you to choose whether to add the change, or "diff," in order to keep it

#diff: Short for "difference," the "diff" of a file is all the changes that happened in it since the last commit. The "diff" of a repo is all the diffs in all the tracked files in the repo that have been made, but which have not yet been committed (sometimes programmers call this "the diffset").

#commit: When a diff is decided to be a good thing to save, we commit the diff to the repo's history using the commit command. When we make a commit we are asked to write a "log" message which describes what happened in the diff. Each commit also knows when it happened and what the repo's "diff" was.

#log: The record of what happened in each commit

#local/remote: When we start working with a git repo, we "clone" it from a remote source and have a copy of that directory on our own system. We call the repo on our personal system the local repo. (We'll talk more about the "clone" command later.)

#master branch: You'll learn in advanced Git that a repo can support multiple branches (we called those "sandboxes" earlier). For the moment, just remember this: by default, when you create a Git repo, you will be working on the master branch.

#branch: The combined history of all the changes of all the files in the repo.