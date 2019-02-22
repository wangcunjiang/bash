#!/bin/bash

# 第十二章：grep和正则表达式
# 
# 1. 正则表达式
# 正则表达式就是字符串的表达式。它能通过具有意义的特殊符号表示一列或多列字符串。
# grep是linux系统下常用的正则表达式工具，可以使用grep来检索文本等输入流的字符串。 
#
#  2, 正则表达式特殊符号
#  ----------------------------------------------------------------------------------------------
#  |   表达式        |    说明                                                                  |
#  |-----------------|--------------------------------------------------------------------------|
#  |   ^             |    匹配行首                                                              |
#  |   $             |  	匹配行尾                                                              |         
#  |   .             |  	任意字符                                                              |         
#  |   *             |  	匹配0～N个某字符或某表达式。例如， [a-z]*表示匹配0到多个小写字母      |  
#  |   []            |  	匹配中括号类的字符。中括号内可以用-表示范围，例如，[1-5]等价于[12345] |       
#  |   \             |  	屏蔽具有字符的特殊含义                                                |     
#  |   <             |  	匹配以某内容为开始的项。例如， \<st表示匹配以st开始的项               |           
#  |   >             |  	匹配以某内容为结束的项。例如， nd>表示匹配以end结尾的项               |  
#  |   string{m,n}   |  	连续m到n个string                                                      |        
#  |   string{m}     |  	出现m次string                                                         |     
#  |   string{m}     |  	至少出现m次string                                                     |         
#  |   [[:upper:]]   |  	A-Z的任意大写字母                                                     |         
#  |   [[:lower:]]   |  	a-z的任意小写字母                                                     |         
#  |   [[:alpha:]]   |  	任意字母                                                              |         
#  |   [[:digit:]]   |  	0-9的任意数字                                                         |              
#  |   [[:xdigit:]]  |  	十六禁止的数字类型，包括：0-9，A-F，a-f                               |             
#  |   [[:alnum:]]   |  	任意字母或数字                                                        |      
#  |   [[:blank:]]   |  	空格或tab键                                                           |            
#  |   [[:space:]]   |  	任何会产生空白的字母，包括空格、TAB、CR等                             |               
#  |--------------------------------------------------------------------------------------------|
#
# 3. grep表达式
# 基本格式
#    grep [OPTIONS] PATTERN [FILE...]
# 格式说明
#    PATTERN : 匹配模式。可以是字符串，也可以是正则表达式。
#    [FILE...] : 是grep搜索的文件(集)
#    [OPTIONS] : 是grep的选项。常用的选项有以下选项。
#        -c : 只输出匹配行的计数。
#        -I : 不区分大 小写(只适用于单字符)。
#        -h : 查询多文件时不显示文件名。
#        -l : 查询多文件时只输出包含匹配字符的文件名。
#        -n : 显示匹配行及 行号。
#        -s : 不显示不存在或无匹配文本的错误信息。
#        -v : 显示不包含匹配文本的所有行。
#        -r : 当FILE中包含文件夹名时，遍历该文件夹的所有子目录；默认情况下，不会遍历子目录。
#


# 示例：下面的查找指令会
# (01), 查找包含“the”的行，并显示行号。
grep -n "the" input.txt
# 说明：-n表示显示“行号”

# (02), 不区分大小写，查找包括“the”的行，并显示行号。
grep -in "the" input.txt
# 说明：-n表示显示“行号”；-i表示不区分大小写，即ignore大小写。

# (03), 查找不包括“the”的行，统计行数。
grep -cv "the" input.txt
# 说明：-c表示统计(count)；-v表示不匹配的项。

# (04), 查找“当前目录”及其“所有子目录”中包含“the”的文件，并显示“the”在其中的行号。
grep -rn "the" .
# 说明：-r表示递归查找；-n表示显示行号。

# (05), 查找匹配“t?st”的项，其中?为任意字符。
grep -n "t.st" input.txt
# 说明：.表示匹配任意字符

# (06), 查找包含数字的行
grep -n "[0-9]" input.txt
# 或
grep -n "[[:digit:]]" input.txt
# 说明：[0-9]表示0-9之间的一个数字；[[:digit:]]也表示0-9之间的一个数字

# (07), 查找以the开头的行
grep -n "^the" input.txt
# 说明："^the"表示以the开头

# (08), 查找以小写字母结尾的行。
grep -n "[a-z]$" input.txt
# 说明：[a-z]表示一个小写字母，$表示结束符；[a-z]$表示以小写字母结束的项。

# (09), 查找空白行。
grep -n "^$" input.txt
# 说明：^表示开头，如t表示以字母t开头；$表示结尾，如e$表示以e结尾。^$表示空白行。

# (10), 查找以字母g开头的单词
grep -n "\<g" input.txt
# 说明：\<表示单词的开始，\<g表示以g开始的单词。

# (11), 查找字符串为go的单词。注意：不能包括goo,good等字符串
grep -n "\<go\>" input.txt
# 说明：\<表示单词的开始，>表示单词结尾。\<go>表示以字母g开头，以字母o结尾。

# (12), 查找包括2-5个字母o的行。
grep -n "o\{2,5\}" input.txt
# 说明：pattern{n,m}表示n到m个pattern。o{2,5}表示2-5个字母o。

# (13), 查找包括2个以上字母o(包括2个)的行。
grep -n "ooo*" input.txt
# 或
grep -n "oo\+" input.txt
# 或
grep -n "o\{2,\}" input.txt
# 说明：
# ooo: 前面两个oo表示匹配2个字母o，后面的o表示匹配0到多个字母o。
# oo+: 第一个字母o表示匹配单个字母o；最后的“o+”一起发挥作用，其中，+是转义后的+，表示1到多个；而o+表示1到多个字母o。
# pattern{n,}表示多于n个pattern。o{2,}表示多于2个字母o。