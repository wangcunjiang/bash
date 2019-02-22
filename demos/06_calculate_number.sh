#!/bin/bash

# 第六章：数值计算
# 数值计算主要有4种实现方式：(())、let、expr、bc。
# 说明： 工作效率：(()) == let > expr > bc
#        (01), (())和let是bash内建命令，执行效率高；而expr和bc是系统命令，会消耗内存，执行效率低。
#        (02), (())、let和expr只支持整数运算，不支持浮点运算；而bc支持浮点运算。
#
# 具体使用见示例

# 示例1：分别用上面四种方式实现"3*(5+2)"
function test01()
{
  val=$((3*(5+2)))                  # 数值i=3*(5+2) (方法一:$(())实现)
  echo "val=$val"

  let "val=3*(5+2)"                 # 数值i=3*(5+2) (方法二:let实现)
  echo "val=$val"

  val=`expr 3 \* \( 5 + 2 \)`       # 数值i=3*(5+2) (方法三:expr实现)
  echo "val=$val"

  val=`echo "3*(5+2)"|bc`           # 数值i=3*(5+2) (方法四:bc实现)
  echo "val=$val"
}

test01


# 示例2：分别用上面四种方式实现“数值+1”
function test02()
{
  val=0
  ((val++))               # 数值加1 (方法一)
  echo "val=$val"

  val=0
  let val++               # 数值加1 (方法二)
  echo "val=$val"

  val=0
  val=`expr $val + 1`     # 数值加1 (方法三)
  echo "val=$val"

  val=0
  val=`echo "$val+1"|bc`  # 数值加1(方法四)
  echo "val=$val"
}

test02



# 示例3：计算1/3,保留3位小数。
function test03()
{
  val=`echo "scale=3; 1/3"|bc`  # 数值i=3*(5+2) (方法四:bc实现)
  echo "val=$val"
}

test03

