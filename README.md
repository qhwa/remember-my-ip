remember-my-ip
==============

将一台电脑的动态ip记录到另一台电脑.
有时候我们需要将自己的ip地址告诉别人，让别人访问我们的电脑。如果我的电脑是动态ip，事情就有些麻烦。
Remember-My-IP 可以将这个过程简化一点。

使用
----

假设 A 电脑是动态ip，B电脑是固定ip（假设ip为ip-B）。
B需要定期访问A电脑上的服务。

步骤：

1. 在B电脑上运行 remember-my-ip 服务

    windows用过通过下载运行 [service.exe](https://github.com/downloads/qhwa/remember-my-ip/remember-my-ip.zip) 即可
    \*nix用户通过Ruby脚本执行 service.rb

2. 每当A电脑IP发生变化，比如重启或者网络重启，从A电脑上访问一下

        http://<ip-B>:4567/save/as/<a-hostname>

    其中 `a-hostname` 是 B 访问 A 时所使用的名称
    在浏览器中或curl方式访问都可以

此时，B电脑的hosts文件中增加了一条这样的记录：

    <ip-A> <a-hostname> #auto generated by Rember-My-IP

B 电脑可以通过 `<a-hostname>` 就可以访问 A 电脑，而无需关心 A 的 ip 地址是什么。


bug提交和功能需求
-----------------

请在这里提交

代码贡献和编译
--------------

fork 然后发 pull request 回来

Windows平台编译方式: 使用 [ocra](http://ocra.rubyforge.org/) 编译

    ocra service.rb

