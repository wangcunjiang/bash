#!/bin/bash

# 第九章：bash调试
# 
# 1. bash命令调试
# bash [-nvx] script
# 说明: (1) script是脚本。
#       (2) 选项与参数介绍如下。
#           -n :不执行 script。仅查询语法的问题;
#           -v :在执行 sccript 前,先将 scripts 的内容输出到屏幕上;
#           -x :不执行脚本。将使用到的 script 内容显示到屏幕上,这是很有用的参数!
# 
# 使用，可以在命令行分别输入以下指令来调试09_debug.sh
#    $ bash -n 09_debug.sh
#    $ bash -v 09_debug.sh
#    $ bash -x 09_debug.sh
#
# 2. echo调试
# echo [OPTION] STRING
# 说明：
#    -n : 输出内容之后，不换行。默认是输入内容之后，换行。
#    -e : 开启反斜线“\”转义功能
#    -E : 开启反斜线“\”转义功能（默认）。
#  
#
# 3. printf调试
# 和echo一样，printf也能用于输出。语法格式和C语言中printf一样。
#




# 示例1：echo输入内容后不换行
echo "echo with return" 
echo -n "echo without return" 

# 示例2：printf输出
printf "\nprintf %s(1+1)=%d\n" "calculate" 3

