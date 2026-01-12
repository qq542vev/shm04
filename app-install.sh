#!/usr/bin/env sh

set -fu

setup() {
	c='shm04-setup'

	if command -v shm04-setup; then
		shm04-setup "${@}"
	else
		if [ "${0%/*}" = "${0}" ]; then
			d='.'
		else
			d="${0%/*}"
		fi

		if [ -x "${d}/shm04-setup" ]; then
			"${d}/shm04-setup" "${@}"
		else
			printf '%sが見つかりません。\n' "${c}" >&2
		fi
	fi
}

# Aurora Store 4.7.5
if [ -z "$(adb exec-out pm path 'com.aurora.store')" ]; then
	setup install 'https://f-droid.org/repo/com.aurora.store_71.apk' '757a82b3d569597a13ffca191e4043233cfaa4bd4e9005ae297a2fcdf3d96d9e'
fi

# Barcode Scanner 4.7.8
if [ -z "$(adb exec-out pm path 'com.google.zxing.client.android')" ]; then
	setup install 'https://f-droid.org/repo/com.google.zxing.client.android_108.apk' '2ed4c2661ed0e2e56b2980d59291dacd58040d219cb7e83b3f6db1102d2ed483'
fi

# Chatbox 1.18.2
if [ -z "$(adb exec-out pm path 'xyz.chatboxapp.chatbox')" ]; then
	setup install -gr 'https://download.chatboxai.app/releases/chatbox-1.18.2.apk' '211af0ce7790d926d563b0974bd168bc9432710e2a36ebeefcbe41749dca4791'
fi

# Ghost Commander 1.64.2b4
if [ -z "$(adb exec-out pm path 'com.ghostsq.commander')" ]; then
	setup install 'https://f-droid.org/repo/com.ghostsq.commander_479.apk' '7e80608184f463d0837328998983beb30799d13de2d5b28dca8f76978dc8a05c'
fi

# FakeTraveler 2.2.2
if [ -z "$(adb exec-out pm path 'cl.coders.faketraveler')" ]; then
	setup install 'https://f-droid.org/repo/cl.coders.faketraveler_222.apk' '3e6ae6732353c01f2c6f7ec7fcfea2bda464eb5891270dec645fdef82c1d5eff'
fi

# Firefox 143.0.4
if [ -z "$(adb exec-out pm path 'org.mozilla.firefox')" ]; then
	setup install 'https://ftp.mozilla.org/pub/fenix/releases/143.0.4/android/fenix-143.0.4-android-armeabi-v7a/fenix-143.0.4.multi.android-armeabi-v7a.apk' 'af560738627d4efc9ace75e708fc48aad6a24c78ef43a89daca27e16ff3829f8'
fi

# K-9 Mail 14.0
if [ -z "$(adb exec-out pm path 'com.fsck.k9')" ]; then
	setup install 'https://f-droid.org/repo/com.fsck.k9_39030.apk' '943c715bfe2668012aa8300fa2329572b8c1293adc5b4aac8ce2f0a46782773c'
fi

# KISS Launcher 3.24.2
if [ -z "$(adb exec-out pm path 'fr.neamar.kiss')" ]; then
	setup install 'https://f-droid.org/repo/fr.neamar.kiss_219.apk' '9f09fe5cc43241906db12763ccf8da35b4430c69e066d20273e2ee41ce891e1e'
fi

# Open Camera 1.55
if [ -z "$(adb exec-out pm path 'net.sourceforge.opencamera')" ]; then
	setup install 'https://f-droid.org/repo/net.sourceforge.opencamera_93.apk' 'bdc0010bf3e238bb235284bf3bbf3b8db11a4c5e90f82986c3ec780fdf3fc779'
fi

# Simple Voice Recorder 5.11.4
if [ -z "$(adb exec-out pm path 'com.simplemobiletools.voicerecorder')" ]; then
	setup install 'https://github.com/SimpleMobileTools/Simple-Voice-Recorder/releases/download/5.11.4/voice-recorder-fdroid-release.apk' 'c472f7877818b7aa915efcc1e230249fe14f56d68482e7abf45b8ede2c6cfaeb'
fi

# VLC 3.6.5
if [ -z "$(adb exec-out pm path 'org.videolan.vlc')" ]; then
	setup install 'https://f-droid.org/repo/org.videolan.vlc_13060505.apk' 'c49c21ae71fa56cfdc1b1d5b473bff4f57251592f3dbfa3bc2f2829ee7bd9493'
fi

# UserLAnd 2.8.3
if [ -z "$(adb exec-out pm path 'tech.ula')" ]; then
	setup install 'https://f-droid.org/repo/tech.ula_7438725.apk' '18e8d94bbd225f7892b31d6c9fc978e08a4b245be9a4831928b8aa3ea0678ec2'
fi
