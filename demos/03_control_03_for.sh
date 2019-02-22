#!/bin/bash

# 第三章：bash控制三之 "for语句"
# for的表达式如下：
#     for 变量名 in 数组
#     do
#       命令1
#       命令2...
#     done
#  
# 说明：(1) 当变量只在列表里, for循环即执行一次所有命令。
#       (2) 命令可为任何有效的 shell命令和语句。变量名为任何单词。 in列表用法是可选的,如果不用它, for循环使用命令行的位置参数。
#
# 具体见下面的示例。



# 示例1：输入当前文件夹的一级子目录中文件名字。
CUR_DIR=`ls`                          # 将ls的结果保存到变量CUR_DIR中
echo "CUR_DIR=$CUR_DIR"               # 显示ls的结果

for val in $CUR_DIR
do
  if [ -f $val ];then                 # 若val是文件，则输出该文件名
    echo "FILE: $val"
  fi 
done


# 示例2：输出1-10之间数字的总和。
sum=0
for ((i=1;i<10;i++))
do
  ((sum=$sum+$i))
done
echo "sum=$sum"                       # 输出总的和sum
