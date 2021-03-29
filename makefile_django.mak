PROJECT_PURPOSE = creating a github repository and uploading files
FOLDER_NAME = C:\Users\User\Documents\PROGRAMMING\DJANGO
USER_NAME = donald-besong
EMAIL = universal.plus.unity@gmail.com
NAME = Donald O. Besong
MESSAGE = "Adding files ..."
GITHUB_REPO = https://github.com/Donald-Besong/temp
LOCAL_GIT = .git
FILE_TO_AMEND = .\myapp\main.py
#in powershell you need to mention -f makefile.mak
build0:	clean_up

build_all:	clean_up initialise add_files configure commit_files add_location upload

clean_up:
ifeq (,$(wildcard .\$(LOCAL_GIT)))
	@echo "no such file. Creating..." 
else
	@echo "file exists. Deleting..., Creating..."
	rd /s /q .\$(LOCAL_GIT) 
endif

initialise:
	@echo ... initialising
	@echo type "dir /a:d" to show all directories or "dir /a:h" to show hidden directories and files
	git init

	
configure:
	@echo conf... 	
	git config --global user.name $(USER_NAME)
	git config --global user.email $(EMAIL)
	
add_files:
	@echo type "git add file_name" to add a specific file
	git add .
	
commit_files:
	git commit -m $(MESSAGE) 
	
add_remote:
	git remote add origin $(GITHUB_REPO)
	echo 'origin becomes the short name of the url of the remote'
	echo 'you could as well do remote add my_short_name $(GITHUB_REPO)'
	echo 'you can view all remotes by running git remote -v
	echo 'you can remove this by running git remote rm origin
	
push_master_to_origin:
	git push origin master
	echo 'this means push to origin the branch whose name is master'
	echo 'you can do git push origin master --force'
	
update0:
	git checkout amend_main1
	echo do "git fetch origin" if necessary
	echo 'do "git status" or "git status -s" if necessary'
	echo '(use "git checkout -- <file>..." to discard changes in working directory)'
	git add Glue_job_to_dynamodb.py
	git commit -m "added the amended Glue_job_to_dynamodb.py"
	git push origin amend_main1