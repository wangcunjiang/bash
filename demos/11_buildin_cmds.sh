#!/bin/bash

# 第十一章：bash内建指令
# 
#  1, echo
#  表达式
#     echo arg
#  说明：在屏幕上显示出由arg对应的内容
#
#  2, read
#  表达式 
#     read 变量名表
#  说明：从标准输入设备读入一行，分解成若干字，赋值给bash程序内部定义的变量
#
#  3, shift
#  表达式 
#     shift [N] (N为大于0的整数；当N省略时，等价与于“shift 1”)
#  说明：所有的参数依次向左移动N个位置，并使用$#减少N，直到$#=0为止。
#
#  4, alias
#  表达式 
#     alias name='value'
#  说明：别名。用name替换value，value要用单引号括住。
#
#  5, export
#     export变量名[=变量值]
#  说明：export可以把bash的变量向下带入子bash(即子bash中可以使用父bash的变量)，从而让子进程继承父进程中的环境变量。但子bash不能用export把它的变量向上带入父bash。
#
#  6, readonly
#     readonly 变量名
#  说明：定义只读变量。不带任何参数的readonly命令将显示出所有只读变量。
#
#  7, exec
#     exec 命令参数
#  说明：当bash执行到exec语句时，不会去创建新的子进程，而是转去执行指定的命令，当指定的命令执行完时，该进程（也就是最初的bash）就终止了，所以bash程序中exec后面的语句将不再被执行。




# 示例1: echo
echo "hello world"

# 示例2: read
echo "please input two paramters:"
read p1 p2
echo "p1=$p1"
echo "p2=$p2"

# 示例3: shift
function foo()
{
  echo "before shift 1, params=$@"
  shift 1
  echo "after  shift 1, params=$@"
}
foo p1 p2 p3 p4 p5

# 示例4: alias
alias A1='echo "alias test"'
exec $A1

# 示例5: export
NOE_VL=roav
export E_VAL=Hello
./11_test_export.sh

# 示例6: readonly
readonly rVal=One
echo "before modify readonly value rVal=$rVal"
# rVal=two # 若放开注释，会报错！
#echo "after  modify readonly value rVal=$rVal"
