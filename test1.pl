#Perl
# $celsius=30;
# $fahrenheit=($celsius *9 / 5)+32; #计算华氏温度
# print "$celsius C is $fahrenheit F.\n" #返回摄氏和华氏温度

# 变量的一般开头都是$ \n表示换行

#控制语言结构
# $celsius=20;
# while  ($celsius <= 45)
# {
#     $fahrenheit = ($celsius * 9 / 5) + 32; #计算华氏温度
#     print "$celsius C is $fahrenheit F.\n";
#     $celsius = $celsius + 5;
# }

#=~ 用来连接正则表达式和带搜索的目标字符串，m代表尝试进行正则表达式匹配，\...\斜线用来标记界限
# if ($reply =~ m/^[0-9]+$/)
# {
#     print"only digits\n";
# }else{
#     print"not only ditgits\n";
# }

# print "Enter a temperature in Celsius:\n";
# $celsius = <STDIN> ; #从用户处接受一个输入
# chomp($celsius); #去掉$celsnius后面的换行符
# if ($celsius =~ m/^[0-9]+ $/)
# {
#     $fahrenheit = ($celsius * 9 /5) + 32; #计算华氏温度
#     print "$celsius C is $fahrenheit F\n" ;
# } else {
#     print "Expecting a number,so I don't understand \"$celsius\".\n";
# }

# #更加实用
# print "Enter a temperature in Celsius:\n" ;
# $celsius = <STDIN> ; #从用户处接受一个输入
# chomp($celsius);
# if ($celsius =~ m/[-+]?^[0-9]+(\.[0-9]*)?$/) #[-+]?处理开头的-+号, \.[0-9]*用来匹配小数点和后面可能出现的数字，()?所包围，整个子表达式都不是匹配成果所必须的
# {
#     $fahrenheit = ($celsius * 9 / 5) + 32;
#     print"$celsius C is $fahrenheit F\n" ;
# }else{
#     print"Expecting a number, so I don't understand \"$celsius\".\n ";
# }

#温度转换程序
# print " Enter a temperature (e.g., 32F, 100c):\n";
# $input=<STDIN>; # 接收用户输入的一行文本
# chomp($input); # 去掉文本末的换行符

# if($input =~ m/^([-+]?[0-9]+)([CF])$/)
# { 
#     #如果程序运行到此，则已经匹配。$1保存数字，$2保存"C"或"F"
#     $InputNum = $1; #把数据保存到已命名变量中
#     $type = $2 ;    #保证程序清晰易懂

#     if ($type eq "C"){ #'eq测试两个字符串是否相等'
#         #输入摄氏温度，则计算华氏温度
#         $celsius=$InputNum;
#         $fahrenheit=($celsius *9/5)+32;
#     }else{
#         #如果不是"C"，则必然是"F",计算摄氏温度
#         $fahrenheit= $InputNum;
#         $celsius=($fahrenheit -32 )*5/9;
#     }
#     #现在得到两个温度值，显示结果为:
#     printf "%.2f C is %.2f F\n",$celsius,$fahrenheit;
# }else{
#     #如果最开始的正则表达式无法匹配，报警
#     print"Expecting a number followed by \"C\" or \"F\",\n";
#     print"so I don't understand \"$input\".\n ";
# }