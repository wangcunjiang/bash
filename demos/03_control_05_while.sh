#!/bin/bash

# 第三章：bash控制五之 "while语句"
# while的表达式如下：
#     while 命令
#     do
#       命令1
#       命令2
#       ...
#     done
#
# 说明：(1) 条件可为任意测试条件，条件判断发生在每次循环开始时。
#       (2) 注意和until的区别。
#

# 示例：从0开始逐步递增，当数值等于5时，停止递增。
val=0                       # 设置起始值为0

while [ "$val" -lt "5" ]    # 条件满足val的值小于5，则执行do中的指令
do
  echo "val=$val"           # 输出数值
  ((val++))                 # 将数值加1
done

