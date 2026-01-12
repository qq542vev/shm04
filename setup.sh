#!/usr/bin/env sh

# NFCを無効
adb shell svc nfc disable

# 明るさの自動調整をオフ
adb shell settings put system screen_brightness_mode 0
# 輝度最低レベル
adb shell settings put system screen_brightness 0

# スリープまでの猶予時間
adb shell settings put system screen_off_timeout 60000
# 充電中にスリープしない
adb shell settings put global stay_on_while_plugged_in 3

# 解像度
adb shell wm size 360x640
# DPI
adb shell wm density 180
# 自動回転をオフ
adb shell settings put system accelerometer_rotation 0

# 提供元不明のアプリ
adb shell settings put secure install_non_market_apps 1

# 日付と時刻の自動設定を無効
adb shell settings put global auto_time 0

# タイムゾーンの自動設定を無効
adb shell settings put global auto_time_zone 0

# ウィンドウアニメスケールを無効
adb shell settings put global window_animation_scale 0
# トランジションアニメスケールを無効
adb shell settings put global transition_animation_scale 0
# Animator再生時間スケールを無効
adb shell settings put global animator_duration_scale 0
