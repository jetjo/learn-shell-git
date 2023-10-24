# 命令执行正常
echo >&1 'every thing is ok'
exit 0
# echo &2 message... 相当于js中的console.error()
echo >&2 'error: failed'
exit 1

