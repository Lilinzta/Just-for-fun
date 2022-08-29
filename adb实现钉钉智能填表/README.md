1.参考博客文章：https://blog.csdn.net/WY_1134/article/details/107471114


2.adb下载：Windows：
	  https://dl.google.com/android/repository/platform-tools-latest-windows.zip
	  Mac：
	  https://dl.google.com/android/repository/platform-tools-latest-darwin.zip
	  Linux：
	  https://dl.google.com/android/repository/platform-tools-latest-linux.zip 


3.环境变量配置(自行百度)


4.常用命令

|   命令格式
|   adb shell input keyevent
|   //可以解锁屏幕
|
|   adb shell input keyevent 82
|
|   //在屏幕上做划屏操作，前四个数为坐标点，后面是滑动的时间（单位毫秒)
|   adb shell input swipe 50 250 250 250 500
|
|   //在 100 100 位置长按 1000毫秒
|   adb shell input swipe 100 100 100 100 1000
|
|   //在屏幕上点击坐标点x=50 y=250的位置
|   adb shell input tap 50 250
|
|   //输入字符abc
|   adb shell input text abc
PS：1. 手机设置密码时，无线调试的进程好像会挂，但是不影响USB连接调试    : (
       2. bat休眠命令：timeout /T 秒数
       3. 设置智能填表工作通知为唯一置顶