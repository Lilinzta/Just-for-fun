::电源键
adb shell input keyevent 224
timeout /T 1

::上滑
adb shell input swipe 540 1800 540 800 100
timeout /T 1

::解锁
adb shell input tap 540 2140
adb shell input tap 800 1540
adb shell input tap 540 2140
adb shell input tap 540 1930
adb shell input tap 540 2140
adb shell input tap 800 1950

::取消USB连接弹窗
adb shell input tap 540 2220
timeout /T 1

::HOME键
adb shell input keyevent 3
timeout /T 1

::点击card图标
adb shell input tap 150 2250
timeout /T 5

::同意查询
adb shell input tap 150 1500
timeout /T 3

::查询
adb shell input tap 540 1700
timeout /T 5

::截屏
adb shell screencap /sdcard/DCIM/Screenshots/card.png

::HOME
adb shell input keyevent 3
timeout /T 1

::点击钉钉图标
adb shell input tap 930 2250
timeout /T 3

::钉钉内点击
adb shell input tap 540 710
timeout /T 5
adb shell input tap 540 2220
timeout /T 5

::上划
adb shell input swipe 540 1800 540 800 100
timeout /T 3

::点击获取定位
adb shell input tap 1000 1220
timeout /T 5

::点击加号
adb shell input tap 100 680
timeout /T 1

::选择图片
adb shell input tap 500 300
timeout /T 1

::提交图片
adb shell input tap 1000 2300
timeout /T 1

::确认绿卡
adb shell input tap 160 1450
timeout /T 1

::再次确认
adb shell input tap 750 1600
timeout /T 1

::提交
adb shell input tap 540 2260
timeout /T 3

::HOME键
adb shell input keyevent 3

::电脑关机
shutdown -s -t 3