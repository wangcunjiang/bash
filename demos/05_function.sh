#!/bin/bash

# 第五章：函数
# 1, 函数定义
# 表达式如下：
#     function 函数名()
#     {
#       ...
#     }
#
# 说明：(1) function可有可无。但建议保留，因为保留的话看起来更加直观。
#       (2) 参数不需要通过()去定义，而是调用时直接传递。
# 
# 2, 调用、传参和返回值
# (1) 通过函数名调用函数 
#     例如，下面的语句就是调用函数foo
#     foo
# (2) 传参是在调用函数时，通过在函数名后面添加参数来传递。
#     例如，下面的语句就是调用函数foo，并传递参数param1 param2和param3
#     foo param1 param2 param3
# (3) 可以在函数中通过return 来返回。获取是在调用函数后，通过$?来获取。
#     例如，下面的语句就是调用函数foo后，打印出foo的返回值。
#     foo param1 param2 param3
#     echo $?
#
# 具体见示例


# 示例：定义一个函数，输出传入的参数总数，并打印出每一个参数。最后，输出函数调用的返回值。
function foo()
{
    local i=0                       # 定义局部变量i
    local paramCount=$#             # 定义局部变量paramCount=传入foo的参数个数
    echo "paramCount=$paramCount"   # 输出参数总数
    for val in $@                   # 输出传入foo的每一个参数。$@是获取全部的参数列表
    do
        ((i++))
        echo "param[$i]=$val"
    done

    return $paramCount              # 返回参数总数
}

foo one two three
echo "foo return=$?"                # 输出foo的返回值

