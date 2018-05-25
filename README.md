# ortp-g711
oRTP g711 send test
# 简介   
这是一个使用oRTP开源库，实现的PCMA(G.711A)编码音频文件推流小项目
# 准备工作
首先需要依次下载、编译、安装以下3个库  <br /> 
mbedtls-2.9.0    <br /> 
bctoolbox-0.6.0  <br /> 
ortp-1.0.2       <br /> 
保证正确部署编译生成的链接库文件和头文件，一般部署在系统/user目录下 <br />
# 说明
oRTP库自带测试程序rtpsend.c，是实现PCMU音频推流的程序，因此测试用音频文件需要是PCMU格式；这个程序是实现PCMA音频推流，仅仅改了负载类型（0改为8），失能了socket的connect()。
# g711推流体验
文件介绍：   <br /> 
ortp_send_g711.c    // g711a推流源码  <br /> 
Makefile            // makefile <br /> 
test.g711           // 测试用g711编码音频文件  <br /> 
audiotest.sdp       // VLC配置文件，双击打开VLC，接收RTP流 <br /> 
编译：<br /> 
<pre><code>
make
</code></pre>
运行：<br /> 
<pre><code>
./ortp_send_g711 test.g711 192.168.2.105 6664
</code></pre>
打开VLC可以听到音乐（这里假设目标IP为192.168.2.105，端口号为6664，改IP要注意相应的改.sdp文件）。  <br /> 
