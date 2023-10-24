# chmod +x git.test.sh

# 如果从没有提交过,git rev-parse --verify HEAD运行后的exit code 是 1
# if git rev-parse --verify HEAD >/dev/null 2>&1
# if语句判断的是退出码,不关心stdout和stderr,所以可以将stdout和stderr重定向到/dev/null
# /dev/null可以理解为black hole,黑洞,所有重定向到/dev/null的数据都会消失, 但这种重定向不会报错
if git rev-parse --verify HEAD >>flag.log 2>&1
then
	# echo '已经提交过'
    # 空的block必须加个冒号, 否则报错:syntax error near unexpected token `else'
    :
else
	# Initial commit: diff against an empty tree object
	echo '仓库还从来没有提交过'
fi

if ./test-exit-code.sh 1>>flag.log 2>error-flag.log
then
	# echo 'if表达式的退出码是0,即exit 0; \n或者脚本执行完毕,没有执行exit 0语句,退出码默认为0'
    :
else
	echo 'if表达式的exit code 是 1'
    echo '脚本内部语句执行错误,\n或者文件没有执行权限,需要执行chmod +x file.sh'
fi

if somecmd >>flag.log 2>&1
then
	# echo 'somecmd执行正常'
    :
else
	echo 'somecmd not found'
fi
