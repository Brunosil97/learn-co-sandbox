#Intro:
#Git repositories let us create logged histories of the versions of the files we "track". Not only lets you track files in a local repo on your machine, you can "share" your repo on the internet so that others can use your code. 

#Copy a repository to your local machine with git clone:
#Git clone to copy someone else's repo from the internet to our local machine. They mustve already "mirrored" their local repository onto the internet. They would of had to copy their local to the internet so we can clone that remote repository: 

#Navigate github. Click the green "xlone or download" button. Select Use SSH as your URL type. Copy to clipboard

#Write git clone anlongside URL
#this will create a local copy on my machine 

#List remotes with git remote:
#If you use the ls comman, you'll see git created a directory called react. Use cd to enter that directory.

#git remote to see the names of each remote repository avaiable 
#since i cloned a remote name called Origin. Origin is the default name git gives to the remote you cloned from. 

#lets prove that the origin name has some relationship to the address GitHub gave us:

git remote show origin 

#Duplicate other organisations repositories into your own via GitHub with the "Fork" button:
#Forking a GitHub repository is just a way to create a personal online duplicate of it
#If my GitHub username were Bruno and I forked facebook/ract. GitHub would copy the repository and name it Bruno/React 

#To get a local copy: clone; to make an online copy of a repository to your ability to update its master branch, fork 





