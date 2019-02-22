#!/bin/bash

# 第三章：bash控制六之 "break和continue语句"
# break命令允许跳出循环。
# continue命令类似于 break命令,只有一点重要差别,它不会跳出循环,只是跳过这个循环步。
# 
# 具体见下面的示例。


# 示例1(break)：从0开始逐步递增，当数值等于5时，停止递增。
v1=0                              # 设置起始值为0

while true
do
  if [ "$v1" -eq "5" ];then      # 如果v1=5，则跳出循环
    break;
  else             
    echo "v1=$v1"                # 输出数值
    ((v1++))                     # 将数值加1
  fi
done


# 示例2(while)：从0开始逐步递增到10：当数值为5时，将数值递增2；否则，输出数值。
v2=0                            # 设置起始值为0

while [ "$v2" -le "10" ]
do
  if [ "$v2" -eq "5" ];then     # 如果v2=5，则将数值加2
    echo "v2=$v2"               # 输出数值
    ((v2=$v2+2))
    continue;
  else             
    echo "v2=$v2"               # 输出数值
    ((v2++))                    # 将数值加1
  fi
done
