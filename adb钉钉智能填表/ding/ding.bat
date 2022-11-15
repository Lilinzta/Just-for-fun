::电源键
adb shell input keyevent 224
timeout /T 1

::上滑
adb shell input swipe 540 1800 540 800 100
timeout /T 1

::取消USB连接弹窗
adb shell input tap 540 2220
timeout /T 1

::HOME键
adb shell input keyevent 3

::点击钉钉图标
adb shell input tap 930 2250
timeout /T 5

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

::提交
adb shell input tap 540 2260
timeout /T 3

::HOME键
adb shell input keyevent 3

::手机重启
adb shell reboot

::电脑关机
shutdown -s -t 3