#Identify How to Initialize a Git Repository with git init
#Git operates on a directory level. When we have a new directory that we want to track our files in, we need to initialize the directory as a Git repository. That means Git will then pay attention to what goes on in the directory and give us all the Git superpowers.
#To get started, we'll create a new directory. Go to the terminal and type the following:

 mkdir my-git-project
 
#This command creates new a directory. Then:

 cd my-git-project
 
#This command moves into the newly created directory.

#Now that we're in the directory where we want Git to watch for changes (adding, removing, and editing files), let's set up this directory by initializing it. In the terminal type git init. It should look like this:
my-git-project : git init

#If you ever do 'git init' in the wrong directory, you can 'rm -rf .git' 
#Initialized empty Git repository in /Users/avi/my-git-project/.git/

#Check the status of a repository with git status:
#write in terminal:

git status 

#Since no files have been added we will see: 

On branch master
No commits yet
nothing to commit (create/copy files and use "git add" to track)

#Lets create a README.md that describes the project. Make our new file by typing 
#touch README.md from within the my-git-project directory. You wont see output in terminal but a new file has been created.
#type 'ls' to list files 

#git status : will show us what our current repository looks like and what changes it sees 
#tells us its not tracking file and file is not doing anything with git...yet 

#Keep track of file changes with  'git add':
#It is currently not being tracked. We have to tell git about  all the files we want it to keep track of and consider as part of our project. We can do this by adding the files to our git repository with git add. To add README.md to repository and check status we type:

git add README.md    git status 

#We can see Git is ready to keep track of README.md. All the changes in the file at the time we added it are "staged". If we were to change README.md we'd need to re-add the file. 
#To save a new version of this new file we need to commit the set of changes to a file, we "save" the changes in our repository by making commits.

#Create a commit and apply a commit message with git commit:
#Git add got our changes to the repository ready in the previous step. To make our first commit, type:

git commit -m "Initial commit" #- this tells git that our commit message, represented by the -m flag is "Initial commit"

#We can see that Git has created a new version of our repo represented buy SHA. Mine is e45ff35 
#SHAs are the identification system that git uses to keep track of versions; they're long complex numbers and letters that are unlikely to be duplicated.
#commit command committed 1 file 

#If we make another change, for example, to README.md, we can add another commit with this new set of changes with:

git commit -am "A message"

#The -a flag refers to adding 'all changes' on all tracked files and -m specifies a commit message of "Updates README.md"




