#!/bin/bash

# 第三章：bash控制一之 "if else语句"
# if else的表达式如下：
#    if 条件1
#    then 命令1
#    elif 条件2
#    then 命令2
#    else 命令3
#    fi
#
# 说明：(1) if 语句必须以单词 fi 终止
#       (2) elif 和 else 为可选项,如果语句中没有否则部分,那么就不需要 elif 和 else 部分
#  
# 具体的使用见下面的两个实例。


# 实例-01: 判断val变量是不是roav或eufy，并根据判断结果给出相应的输出。
val=roav                                            # 设置val的值为roav
if [ "$val" = "roav" ] || [ "$val" = "eufy" ]; then
  echo "val is expected:$val"                       # 若val的值是roav或eufy，则输出该文本
else
  echo "val is unexpected:$val"                     # 若val的值不是roav或eufy，则输出该文本
fi


# 实例-02: 提示用户输入值。若输入的值小于0，则输出“negtive number”；
#          若等于0,则输出“number zero”，否则，输出“positive number”。  
echo -n "please input a number:"       # 提示用户输入一个值
read num                               # 保存用户输入的值到num中

if [ "$num" -lt "0" ];then
  echo "negtive number"                # 若num小于0,则输出“negtive number”
elif [ "$num" -gt "0" ];then
  echo "positive number"               # 大于0,则输出“positive number”
else
  echo "number zero"                   # 大于0,则输出"number zero"
fi
