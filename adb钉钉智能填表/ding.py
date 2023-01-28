import os
import time

def autoding():
    #电源键
    os.system("adb shell input keyevent 224")
    time.sleep(1)
    #上滑
    os.system("adb shell input swipe 540 1800 540 800 100")
    time.sleep(1)
    #解锁
    os.system("adb shell input tap 540 2140")
    os.system("adb shell input tap 800 1540")
    os.system("adb shell input tap 540 2140")
    os.system("adb shell input tap 540 1930")
    os.system("adb shell input tap 540 2140")
    os.system("adb shell input tap 800 1940")
    #取消USB连接弹窗
    os.system("adb shell input tap 540 2220")
    time.sleep(1)
    #HOME键
    os.system("adb shell input keyevent 3")
    #点击钉钉
    os.system("adb shell input tap 930 2250")
    time.sleep(3)
    #钉钉内点击
    os.system("adb shell input tap 540 710")
    time.sleep(5)
    os.system("adb shell input tap 540 2220")
    time.sleep(5)
    #上划
    os.system("adb shell input swipe 540 1800 540 800 100")
    time.sleep(3)
    #点击获取定位
    os.system("adb shell input tap 1000 1220")
    time.sleep(5)
    #提交
    os.system("adb shell input tap 540 2260")
    time.sleep(3)
    #HOME键
    os.system("adb shell input keyevent 3")
    #电脑关机
    #shutdown -s -t 3


autoding()




