#!/bin/bash

# 输出在前一个脚本中export(导出)的变量
echo "export var E_VAL=$E_VAL"
# 输出在前一个脚本中未export(未导出)的变量
echo "no-export var NOE_VL=$NOE_VL"

exit
