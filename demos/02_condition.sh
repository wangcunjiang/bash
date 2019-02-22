#!/bin/bash

# 第二章：bash条件判断
# 
# bash条件判断有2种格式，分别是 test EXPRESSION 和 [ EXPRESSION ]
#
# 1. 格式一的示例
#  格式一表达式：test EXPRESSION
#  ----------------------------------------------------------------
#  |   条件判断语句	   |     条件判断解释                         |
#  |-------------------|------------------------------------------|
#  |   test -d File	   |    判断File是不是"目录"                  |
#  |   test -f File	   |    判断File是不是"普通文件"              |
#  |   test -L File	   |    判断File是不是"符号链接"              |
#  |   test -r File	   |    判断File是不是"可读"                  |
#  |   test -s File	   |    判断File是不是"文件长度大于0、非空"   |
#  |   test -w File	   |    判断File是不是"可写"                  |
#  |   test -u File	   |    判断File是不是"有suid位设置"          |
#  |   test -x File	   |    判断File是不是"可执行"                |
#  |---------------------------------------------------------------
#
# 2. 格式二的示例
# 格式二表达式：[ EXPRESSION ]
#  ---------------------------------------------------------------------------------
#  |   条件判断语句	               |     条件判断解释                              |
#  |-------------------------------|-----------------------------------------------|
#  |  [ (expr) ]                   |     expr为真                                  |
#  |  [ !expr ]                    |     expr为假                                  |
#  |  [ expr1 -a expr2 ]           |     expr1和expr2同时为真                      |            
#  |  [ expr1 -o expr2 ]	         |     expr1或expr2为真                          |        
#  |  [ -n string ]	               |     string的长度不为0                         |         
#  |  [ -z string ]	               |     string的长度为0                           |       
#  |  [ string1 = string2 ]	       |     两个字符串string1和string2相等            |                      
#  |  [ string1 != string2 ]       |     两个字符串string1和string2不等            |                      
#  |  [ integer1 -eq integer2 ]    |     两个integer1和integer2整数相等            |                      
#  |  [ integer1 -ne integer2 ]    |     integer1不等于integer2                    |              
#  |  [ integer1 -ge integer2 ]    |     integer1大于或等于integer2                |                  
#  |  [ integer1 -gt integer2 ]    |     integer1大于integer2                      |            
#  |  [ integer1 -le integer2 ]    |     integer1小于或等于integer2                |                  
#  |  [ integer1 -lt integer2 ]    |     integer1小于integer2                      |            
#  |  [ file1 -ef file2 ]          |     文件file1和file2有相同的device和inode数目 |                                 
#  |  [ file1 -nt file2 ]          |     file1的修改事件早于file2                  |                
#  |  [ file1 -ot file2 ]          |     file1的修改事件晚于file2                  |                
#  |  [ -b file ]                  |     file是块设备                              |    
#  |  [ -c file ]                  |     file是字符设备                            |      
#  |  [ -d file ]                  |     file是文件夹                              |    
#  |  [ -e file ]                  |     file是存在                                |  
#  |  [ -f file ]                  |     file是普通文件                            |      
#  |  [ -g file ]                  |     file存在，且有group-ID                    |              
#  |  [ -G file ]                  |     file存在，且group-ID是有效的              |                    
#  |  [ -h file ]                  |     file存在，且是一个硬链接                  |                
#  |  [ -L file ]                  |     file存在，且是一个软链接                  |                
#  |  [ -r file ]                  |     file存在，且可读                          |        
#  |  [ -w file ]                  |     file存在，且可写                          |        
#  |  [ -x file ]                  |     file存在，且可执行                        |          
#  |-------------------------------------------------------------------------------|
#
#
# 3. 条件判断复合表达式
#  ----------------------------------------------------------------
#  |   符号	 |     说明                                           |
#  |---------|----------------------------------------------------|
#  |   -a	   |    逻辑与,操作符两边均为真,结果为真,否则为假。     |
#  |   &&	   |    逻辑与,操作符两边均为真,结果为真,否则为假。     |
#  |   -o	   |    逻辑或,操作符两边一边为真,结果为真,否则为假。   |
#  |   ||	   |    逻辑或,操作符两边一边为真,结果为真,否则为假。   |
#  |   !	   |    逻辑否,条件为假,结果为真。                      |
#  |--------------------------------------------------------------|
#
# 
# 4. 实际应用
# (1) 判断当前目录下是否存在文件 02_condition.sh。
#     $ [ -f ./02_condition.sh ]
#     或者
#     $ test -f ./02_condition.sh
#
#     说明：可以在判断句末尾加 && echo OK；表示满足条件则输出OK，否则不输出任何内容。具体如下：
#     $ [ -f ./02_condition.sh ] && echo exist 
# (2) 判断变量val是否等于字符串 roav。
#     $ val=roav
#     $ [ "$val" = "roav" ]
#     或者
#     $ test "$val" = "roav"
#   
# (3) 判断02_condition.sh是不是可读并且可执行。
#     $ [ -r 02_condition.sh -a -x 02_condition.sh ]
#     或者
#     $ [ -r 02_condition.sh ] && [ -x 02_condition.sh ]
#     或者
#     $ test -r 02_condition.sh -a -x 02_condition.sh
#     或者
#     $ test -r 02_condition.sh && test -x 02_condition.sh
# (4) 判断val变量的值是否等于roav 或者 eufy。
#     $ [ "$val" = "roav" -o "$val" = "eufy" ]
#     或者
#     $ [ "$val" = "roav" ] || [ "$val" = "eufy" ]
#     或者
#     $ test "$val" = "roav" -o "$val" = "eufy" 
#     或者
#     $ test "$val" = "roav" || test "$val" = "eufy" 
#
#     说明：上面的指令都可以在bash命令行中指令运行！
