git filter-branch --env-filter '
     OLD_EMAIL="rohit.r@iserveu.co.in"
     CORRECT_EMAIL="rohitroshanjena2017@gmail.com"
     if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
     then
         export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
     fi
     if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
     then
         export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
     fi
     ' --tag-name-filter cat -- --branches --tags
