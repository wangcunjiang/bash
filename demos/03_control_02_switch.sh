#!/bin/bash

# 第三章：bash控制二之 "case语句"
# case的表达式如下：
#     case 值 in
#     模式1)
#       命令1
#       命令2
#       ...
#       ;;
#     模式2)
#       命令1
#       命令2
#       ...
#       ;;
#     模式3)
#       命令1
#       命令2
#       ...
#       ;;
#     *)
#       命令1
#       命令2
#       ...
#       ;;
#     esac
#
# 说明：(1) case要以esac结束
#       (2) 可能包含多种case，每个case满足模式，则执行该模式下的命令。
#       (3) 模式可能包含广义的字符。例如，以下三种广义字符的含义如下：
#           *  表示任意字符
#           ?  表示任意单字符
#           [..]  表示范围中的任意字符
#
# 具体见下面的示例。


# 示例：提示用户输入Y/y或N/n。
#       若输入Y或者y，则输出“yes”；若输入N或者n,则输出“no”；
#       否则，“incorrect input”。
echo -n "are you femail(Y/N):"            # 提示用户输入一个值
read val                                  # 保存用户输入的值到val中

case $val in
Y|y)
  echo "yes"                              # 用户输入Y或y，则输出“yes”
  ;;
N|n)
  echo "no"                                    # 用户输入N或n，则输出“no”
  ;;
*)
  echo "incorrect input"                  # 其它输入，则输出“incorrect input”
  ;;
esac

