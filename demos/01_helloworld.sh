#!/bin/bash

# 第一章：bash脚本开篇
# 
# (1) 新建文件01_helloworld.sh
#    $ touch 01_helloworld.sh
# (2) 文件内容如下：
#    #!/bin/bash
#    echo "hello world"
# (3) 修改文件属性，给文件添加可执行权限。
#    $ chmod a+x 01_helloworld.sh
# (4) 运行该脚本
#    $ ./01_helloworld.sh
#    或者
#    $ /bin/bash 01_helloworld.sh
#   
#    运行脚本，终端会输出如下内容：
#    $ hello bash
#
# 说明：1) #!/bin/bash :       它是bash文件声明语句，表示是以/bin/bash程序执行该文件。它必须写在文件的第一行！
#       2) echo "hello bash" : 表示在终端输出“hello bash      
#       3) # : 以井号#开头的行表示注释行。      

echo "hello bash"
