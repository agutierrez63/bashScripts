#! /bin/sh

DIRECTORY=3350

if [ -d "$DIRECTORY" ]; then
        # Control will enter here if $DIRECTORY exists.
        echo "Directory $DIRECTORY already exists."
        echo "You must delete or rename it, then try again."
        exit
fi

echo "Creating the directory: $DIRECTORY in your home directory..."
sleep 1

# create the base directory that has rwx permission for faculty (group)
# and user, but no read access for others.
mkhwdir ~/$DIRECTORY

# Put a hook into .bash_logout to run a script that will set all files you
# write-enable items so faculty can compile and test the code.
# delete the line if already there, then add it.
#sed /set_permissions.sh/d ~/.bash_logout
#echo  /home/fac/nick/public/$DIRECTORY/scripts/set_permissions.sh  >> ~/.bash_logout

# now create the file structures, so they are the same for every student.
mkdir ~/$DIRECTORY/1
mkdir ~/$DIRECTORY/2
mkdir ~/$DIRECTORY/3
mkdir ~/$DIRECTORY/4
mkdir ~/$DIRECTORY/5
mkdir ~/$DIRECTORY/6
mkdir ~/$DIRECTORY/7
mkdir ~/$DIRECTORY/8
mkdir ~/$DIRECTORY/9
mkdir ~/$DIRECTORY/10
mkdir ~/$DIRECTORY/11
mkdir ~/$DIRECTORY/12
mkdir ~/$DIRECTORY/13
mkdir ~/$DIRECTORY/14
mkdir ~/$DIRECTORY/15
mkdir ~/$DIRECTORY/mid
mkdir ~/$DIRECTORY/proj

echo "Your $DIRECTORY directory setup is complete."
sleep 1
