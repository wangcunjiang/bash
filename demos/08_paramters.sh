#!/bin/bash

# 第八章：bash自带参数
# 
#  ---------------------------------------------------------------------------------------------
#  |   表达式	|    说明                                                                        |
#  |-------------------------------------------------------------------------------------------|
#  |   $?	    |    上次指令或程序的执行结果。如果执行成功则为0，否则为非0                      |            
#  |   $#	    |    参数个数                                                                    | 
#  |   $@	    |    全部变量。"$@"(注意有引号)是数组类型，"$@"中每个变量是独立的，且是字符串类型|
#  |   $*	    |    全部变量，"$*"(注意有引号)是字符串类型，"$*"是所有变量组成的字符串。        |
#  |   $-	    |    在shell启动或使用set命令时提供选项                                          |
#  |   $$	    |    当前shell的进程号                                                           |    
#  |   $0	    |    当前shell进程名                                                             | 
#  |   $n	    |    n表示数字。例如，$1表示第1个参数，$2表示第2个参数                           |              
#  |-------------------------------------------------------------------------------------------|
#
#  使用说明：在命令行输入如下指令执行该脚本，查看输出。
#      $ ./08_paramters.sh one two three


function foo()
{
  echo "foo param num:$#"
  echo "foo param[0]:$0"
  echo "foo all param@:$@"
  i=0
  for item in "$@"; 
  do 
    ((i++))
    echo "@[$i]=["$item"]"
  done

  echo "foo all param*:$*"
  i=0
  for item in "$*"; 
  do 
    ((i++))
    echo "*[i]=["$item"]"
  done

  echo "foo param[1]:$1"
  echo "foo param[2]:$1"
  return $#
}

foo p1 p2 p3
echo "foo return value:$?"

echo "-----------------------------"
echo "script param num:$#"
echo "script all param@:$@"
echo "script all param*:$*"
echo "script all param[0]:$1"
echo "script all param-:$-"
echo "script all shell-PID:$$"
echo "script all shell-PName:$0"
