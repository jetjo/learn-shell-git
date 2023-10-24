# chmod +x git.test.sh
commited=$(git rev-parse --verify HEAD >/dev/null 2>&1)
echo $commited

# if git rev-parse --verify HEAD >/dev/null 2>&1
if git rev-parse --verify HEAD >>flag.log 2>&1
then
	echo '已经提交过'
else
	# Initial commit: diff against an empty tree object
	echo '仓库还没有提交过'
fi
