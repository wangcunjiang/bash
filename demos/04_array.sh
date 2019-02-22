#!/bin/bash

# 第四章：bash数组
# 1, 初始化数组
# bash中初始化数组的三种常用方式。
# 方式一：
#     array=(10 20 30 40 50)
# 
# 方式二：
#     array[0]=10
#     array[1]=20
#     array[2]=30
#     array[3]=40
#     array[4]=50
#
# 方式三：
#     var="10 20 30 40 50"; array=($var)
#
# 2, 数组操作
# (1) 获取第i项:          ${array[i]}
# (2) 获取所有项:         ${array[@]} 或 ${array[*]}
# (3) 获取第i到j项:       ${array[@]:0:3}
# (4) 获取长度:           ${#array[@]} 或 ${#array[*]}
# (5) 将数组中的0替换1:   ${a[@]/0/1}          # 说明：${数组名[@或*]/查找字符/替换字符
# (6) 删除第i项:          unset array[1]
# (7) 删除所有项:         unset array
#
# 具体见示例


# 示例
array=(10 20 30 40 50)                  # 初始化数组
# (01) 显示数组中第2项
echo "array[2]=${array[2]}"             # 说明：数组是从序号0开始计算(即第1项为array[0])。
# (02) 显示数组中的所有元素
echo "array-all01=${array[@]}"
# 或者
echo "array-all-02=${array[*]}"
# (03) 输出数组的第1-3项
echo "array[1-3]=${array[@]:0:3}"       # 说明：参考“${数组名[@或*]:起始位置:长度}”
# (04) 显示数组长度
echo "array-len-01=${#array[@]}"
# 或者
echo "array-len-02=${#array[*]}"
# (05) 将数组中的0替换成1
echo ${array[@]/0/1}                    # 说明：${数组名[@或*]/查找字符/替换字符
# (06) 删除数组第2项元素
unset array[1]                          # 说明：unset仅仅只清除array[1]的值，并没有将array[1]删除掉
echo "array-all-after-unset[1]=${array[*]}"
# (07) 删除整个数组
unset array
echo "array-all-after-unset[all]=${array[*]}"
