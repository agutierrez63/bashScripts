#!/bin/sh
# This script will set permissions on student directories.
# Permissions are set to files in the student's course folder.
# Write permissions are granted to the faculty 'group'.
#
# This script is run when a student logs out of their Odin session.
# Any files you create will by default not allow faculty to edit them so
# add write permissions

DIRECTORY=3350

echo
echo
echo "Setting the permissions of your ~/$DIRECTORY directory..."
#sleep 1

# lock out world at the root folder level, only allow faculty and owner.
chmod  770 ~/$DIRECTORY
#echo "."
# set any files that are executable by 'user' to be executable by 'everyone'
find ~/$DIRECTORY -type f -perm -u=x -exec chmod go+x '{}' \; 2> /dev/null
#cp ~/.bash_history ~/assignments
#allow faculty read and write access
chmod -R ug+rw ~/$DIRECTORY/1/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/2/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/3/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/4/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/5/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/6/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/7/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/8/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/9/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/10/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/11/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/12/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/13/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/14/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/15/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/mid/ 2> /dev/null
chmod -R ug+rw ~/$DIRECTORY/proj/ 2> /dev/null
#chmod -R guo+rw ~/assignments/cmps215/  2> /dev/null
#chmod -R guo+rw ~/assignments/cmps223/  2> /dev/null
#echo "."
# make sure all directories are executable
find ~/$DIRECTORY/ -type d -exec chmod g+x '{}' \; 2> /dev/null
echo "."
echo "complete."
echo
echo "Note:-----------------------------------------------"
echo "When the semester is over you can execute           "
echo "   \"/home/fac/nick/public/$DIRECTORY/scripts/remove_logout_hook.sh\""
echo "to stop this from running.                          "
echo "----------------------------------------------------"
echo
#sleep 1
