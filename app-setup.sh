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

app_clear() {
	printf '%s のアプリデータを削除: ' "${1}"
	adb shell pm clear "${1}"
}

# 「書」メモ
setup disable 'jp.co.sharp.android.organizerpen'
app_clear 'jp.co.sharp.android.organizerpen'

# あとからキャプチャー
setup disable 'jp.co.sharp.android.shframecapture'
app_clear 'jp.co.sharp.android.shframecapture'

# アドレス帳
# setup uninstall 'com.android.providers.contacts'

# アプリケーションロック
# setup uninstall 'jp.co.sharp.android.pseudolock'

# ｱﾗｰﾑ・時計
setup disable 'com.android.deskclock'
app_clear 'com.android.deskclock'

# アルバム
setup disable 'jp.co.sharp.android.picturemanager'
app_clear 'jp.co.sharp.android.picturemanager'

# ウィジェット
setup uninstall 'jp.co.rakuten.infoseekwidget'

# エモパー
setup disable 'jp.co.sharp.android.emopar'
app_clear 'jp.co.sharp.android.emopar'

# エモパー内蔵コンテンツ1
setup disable 'jp.co.sharp.android.emopar.internalcontent'
app_clear 'jp.co.sharp.android.emopar.internalcontent'

# エモパー内蔵コンテンツ2
setup disable 'jp.co.sharp.android.emopar.internalcontent2'
app_clear 'jp.co.sharp.android.emopar.internalcontent2'

# おｻｲﾌｹｰﾀｲ
setup uninstall 'com.felicanetworks.mfm.main'

# おｻｲﾌｹｰﾀｲ ｱﾌﾟﾘｾｯﾄｱｯﾌﾟ
setup disable 'com.felicanetworks.mfm'
app_clear 'com.felicanetworks.mfm'

# おｻｲﾌｹｰﾀｲ 設定ｱﾌﾟﾘ
setup disable 'com.felicanetworks.mfs'
app_clear 'com.felicanetworks.mfs'

# おｻｲﾌｹｰﾀｲ Webﾌﾟﾗｸﾞｲﾝ
setup uninstall 'com.felicanetworks.mfw.a.main'

# おｻｲﾌｹｰﾀｲ Webﾌﾟﾗｸﾞｲﾝｾｯﾄｱｯﾌﾟ
setup disable 'com.felicanetworks.mfw.a.boot'
app_clear 'com.felicanetworks.mfw.a.boot'

# おサイフケータイ ロックコントロール
# setup uninstall 'jp.co.sharp.android.felicalockcontrol'

# からだメイト
setup disable 'jp.co.sharp.android.karadamate'
app_clear 'jp.co.sharp.android.karadamate'

# カレンダー
setup disable 'com.google.android.calendar'
app_clear 'com.google.android.calendar'

# カレンダーストレージ
setup disable 'com.android.providers.calendar'
app_clear 'com.android.providers.calendar'

# カレンダー選択ツール
setup disable 'jp.co.sharp.android.calendarselector'
app_clear 'jp.co.sharp.android.calendarselector'

# かんたんｽﾞｰﾑ
# setup uninstall 'jp.co.sharp.android.zoomanywhere'

# キーチェーン
# setup uninstall 'com.android.keychain'

# キッティングサービス
# setup uninstall 'jp.co.sharp.android.kittingservice'

# キッティングセットアップウィザード
setup disable 'jp.co.sharp.android.kittingsuw'
app_clear 'jp.co.sharp.android.kittingsuw'

# キッティング設定
# setup uninstall 'jp.co.sharp.android.kittingapp'

# クラウド プリント
setup disable 'com.google.android.apps.cloudprint'
app_clear 'com.google.android.apps.cloudprint'

# コピー履歴SH
setup disable 'jp.co.sharp.android.copyhistorysh'
app_clear 'jp.co.sharp.android.copyhistorysh'

# コンテンツマネージャー
# setup uninstall 'jp.co.sharp.android.cm'

# サポート
setup uninstall 'jp.co.rakuten.mobile.support'

# シェル
# setup uninstall 'com.android.shell'

# システムUI
# setup uninstall 'com.android.systemui'

# スクリーン
setup uninstall 'jp.co.rakuten.slide'

# スクロールオート
# setup uninstall 'jp.co.sharp.android.scrollauto'

# ストレージの設定
# setup uninstall 'com.android.providers.settings'

# セキュリティポリシー
# setup uninstall 'jp.co.sharp.android.security.policy'

# セットアップウィザード
setup disable 'com.google.android.setupwizard'
app_clear 'com.google.android.setupwizard'

# セルフチェック
# setup uninstall 'jp.co.sharp.android.shselfcheck'

# ダウンロード
setup disable 'com.android.providers.downloads.ui'
app_clear 'com.android.providers.downloads.ui'

# ダウンロードマネージャー
setup disable 'com.android.providers.downloads'
app_clear 'com.android.providers.downloads'

# タグ
setup disable 'com.android.apps.tag'
app_clear 'com.android.apps.tag'

# チャイルドロック
# setup uninstall 'jp.co.sharp.android.touchguard'

# データ引継
# setup uninstall 'jp.co.sharp.android.restoreguide'

# ドキュメント
# setup uninstall 'com.android.documentsui'

# どこでもコピー
setup disable 'jp.co.sharp.android.copyanywhere'
app_clear 'jp.co.sharp.android.copyanywhere'

# ドライブ
setup disable 'com.google.android.apps.docs'
app_clear 'com.google.android.apps.docs'

# トラベル
setup uninstall 'jp.co.rakuten.travel.andro'

# ニュース
setup uninstall 'jp.co.rakuten.InfoseekNews'

# ネット辞書
setup disable 'jp.co.sharp.android.netdictionary'
app_clear 'jp.co.sharp.android.netdictionary'

# パッケージアクセス支援ツール
# setup uninstall 'com.android.defcontainer'

# パッケージインストーラ
# setup uninstall 'com.google.android.packageinstaller'

# バブル
setup disable 'com.android.noisefield'
app_clear 'com.android.noisefield'

# ハングアウト
setup disable 'com.google.android.talk'
app_clear 'com.google.android.talk'

# ビデオプレーヤー
setup disable 'jp.co.sharp.android.shmediaplayer'
app_clear 'jp.co.sharp.android.shmediaplayer'

# ファイル管理
# setup uninstall 'jp.co.sharp.android.filemanager'

# フェーズビーム
setup disable 'com.android.phasebeam'
app_clear 'com.android.phasebeam'

# フォト
setup disable 'com.google.android.apps.photos'
app_clear 'com.google.android.apps.photos'

# フォトスクリーンセーバー
setup disable 'com.android.dreams.phototable'
app_clear 'com.android.dreams.phototable'

# フォントマネージャー
# setup uninstall 'jp.co.sharp.android.downloadfont'

# ブックス
setup uninstall 'jp.co.rakuten.books'

# プリセット壁紙
# setup uninstall 'jp.co.sharp.android.wallpaper3d'

# マーケットフィードバックエージェント
setup disable 'com.google.android.feedback'
app_clear 'com.google.android.feedback'

# マップ
setup disable 'com.google.android.apps.maps'
app_clear 'com.google.android.apps.maps'

# メール
setup uninstall 'jp.co.rakuten.android.mailer'

# メール
# setup uninstall 'com.android.email'

# メッセージ
setup disable 'com.android.mms'
app_clear 'com.android.mms'

# メディアストレージ
setup disable 'com.android.providers.media'
app_clear 'com.android.providers.media'

# メモ帳
setup disable 'jp.co.sharp.android.memopad'
app_clear 'jp.co.sharp.android.memopad'

# モバイル
setup uninstall 'jp.co.rakuten.broadband.sim'

# モバイルFeliCaクライアント
setup disable 'com.felicanetworks.mfc'
app_clear 'com.felicanetworks.mfc'

# ワイヤレス出力
# setup uninstall 'jp.co.sharp.android.SHWirelessOutput'

# 印刷スプーラ
setup disable 'com.android.printspooler'
app_clear 'com.android.printspooler'

# 外部ストレージ
# setup uninstall 'com.android.externalstorage'

# 楽天 gateway
setup uninstall 'jp.co.rakuten.gateway3'

# 楽天チェック
setup uninstall 'ht.spotlig.rakutenchk'

# 楽天でんわ
setup uninstall 'jp.co.rakuten.denwa'

# 楽天ポイントカード
setup uninstall 'jp.co.rakuten.pointpartner.app'

# 楽天マガジン
setup uninstall 'jp.co.rakuten.magazine'

# 楽天マンガビューア
setup uninstall 'jp.co.rakuten.rmanga'

# 楽天レシピ
setup uninstall 'jp.co.rakuten.recipe'

# 楽天市場
setup uninstall 'jp.co.rakuten.android'

# 楽天Edy
setup uninstall 'jp.edy.edyapp'

# 楽天Kobo
setup uninstall 'jp.co.rakuten.kobo'

# 簡易留守録設定
setup disable 'jp.co.sharp.android.soundmemo'
app_clear 'jp.co.sharp.android.soundmemo'

# 簡易留守録設定（通話録音）
setup disable 'jp.co.sharp.android.providers.soundmemo'
app_clear 'jp.co.sharp.android.providers.soundmemo'

# 緊急警報
# setup uninstall 'com.android.cellbroadcastreceiver'

# 辞書
setup disable 'jp.co.sharp.android.xmdfDict'
app_clear 'jp.co.sharp.android.xmdfDict'

# 初めての方
setup uninstall 'jp.co.rakuten.sdtd.howto'

# 証明書インストーラ
# setup uninstall 'com.android.certinstaller'

# 設定
# setup uninstall 'com.android.settings'

# 体験しよう！
# setup uninstall 'jp.co.sharp.android.interactivesetup'

# 対面通信
# setup uninstall 'jp.co.sharp.android.obex'

# 単語リスト
setup disable 'com.android.providers.userdictionary'
app_clear 'com.android.providers.userdictionary'

# 長エネスイッチ
# setup uninstall 'jp.co.sharp.android.longenergymode'

# 通話管理
# setup uninstall 'com.android.server.telecom'

# 天気
setup disable 'jp.co.sharp.android.LockWeatherWidget'
app_clear 'jp.co.sharp.android.LockWeatherWidget'

# 電卓
setup disable 'com.google.android.calculator'
app_clear 'com.google.android.calculator'

# 電話
# setup uninstall 'com.android.dialer'

# 電話（フリップカバー使用時）
setup disable 'jp.co.sharp.android.porthole'
app_clear 'jp.co.sharp.android.porthole'

# 電話サービス
# setup uninstall 'com.android.phone'

# 電話とSMS用ストレージ
# setup uninstall 'com.android.providers.telephony'

# 電話帳
setup disable 'jp.co.sharp.android.addressbook.app'
app_clear 'jp.co.sharp.android.addressbook.app'

# 認識済みの顔
setup disable 'com.android.facelock'
app_clear 'com.android.facelock'

# 本体
# setup uninstall 'jp.co.sharp.android.account'

# 連絡先
# setup uninstall 'com.android.contacts'

# Activation App
setup uninstall 'jp.co.rakuten.sdtd.activationapp'

# Android System WebView
setup disable 'com.google.android.webview'
app_clear 'com.google.android.webview'

# Androidシステム
# setup uninstall 'android'

# Androidライブ壁紙
setup disable 'com.android.wallpaper'
app_clear 'com.android.wallpaper'

# BackupRestoreProvider
# setup uninstall 'jp.co.sharp.android.backuprestore.provider'

# Bluetooth MIDI Service
# setup uninstall 'com.android.bluetoothmidiservice'

# Bluetooth共有
# setup uninstall 'com.android.bluetooth'

# Bluetooth電話帳取り込み
setup disable 'jp.co.sharp.android.bluetoothpbappce'
app_clear 'jp.co.sharp.android.bluetoothpbappce'

# Bookmark Provider
setup disable 'com.android.bookmarkprovider'
app_clear 'com.android.bookmarkprovider'

# Bright Keep
# setup uninstall 'jp.co.sharp.android.brightkeep'

# Call Log Backup/Restore
setup disable 'com.android.calllogbackup'
app_clear 'com.android.calllogbackup'

# CaptivePortalLogin
# setup uninstall 'com.android.captiveportallogin'

# Chrome
setup disable 'com.android.chrome'
app_clear 'com.android.chrome'

# Clip Now
setup disable 'jp.co.sharp.android.scshoviewer'
app_clear 'jp.co.sharp.android.scshoviewer'

# Clip Now設定
# setup uninstall 'jp.co.sharp.android.scshocapture'

# com.android.backupconfirm
# setup uninstall 'com.android.backupconfirm'

# com.android.carrierconfig
# setup uninstall 'com.android.carrierconfig'

# com.android.frameworks.telresources
# setup uninstall 'com.android.frameworks.telresources'

# com.android.managedprovisioning
# setup uninstall 'com.android.managedprovisioning'

# com.android.partnerbrowsercustomizations.forChrome
# setup uninstall 'com.android.partnerbrowsercustomizations.forChrome'

# com.android.providers.partnerbookmarks
setup disable 'com.android.providers.partnerbookmarks'
app_clear 'com.android.providers.partnerbookmarks'

# com.android.sharedstoragebackup
# setup uninstall 'com.android.sharedstoragebackup'

# com.android.smspush
# setup uninstall 'com.android.smspush'

# com.android.wallpaper.holospiral
setup disable 'com.android.wallpaper.holospiral'
app_clear 'com.android.wallpaper.holospiral'

# com.android.wallpapercropper
# setup uninstall 'com.android.wallpapercropper'

# com.qti.dpmserviceapp
# setup uninstall 'com.qti.dpmserviceapp'

# com.qti.primarycardcontroller
# setup uninstall 'com.qti.primarycardcontroller'

# com.qti.qualcomm.datastatusnotification
# setup uninstall 'com.qti.qualcomm.datastatusnotification'

# com.qti.service.colorservice
# setup uninstall 'com.qti.service.colorservice'

# com.qti.xdivert
# setup uninstall 'com.qti.xdivert'

# com.qualcomm.embms
# setup uninstall 'com.qualcomm.embms'

# com.qualcomm.fastdormancy
# setup uninstall 'com.qualcomm.fastdormancy'

# com.qualcomm.qcrilmsgtunnel
# setup uninstall 'com.qualcomm.qcrilmsgtunnel'

# com.qualcomm.qti.GBAHttpAuthentication.auth
# setup uninstall 'com.qualcomm.qti.GBAHttpAuthentication.auth'

# com.qualcomm.qti.ims
# setup uninstall 'com.qualcomm.qti.ims'

# com.qualcomm.qti.networksetting
# setup uninstall 'com.qualcomm.qti.networksetting'

# com.qualcomm.qti.telephony.vodafonepack
# setup uninstall 'com.qualcomm.qti.telephony.vodafonepack'

# com.qualcomm.qti.telephonyservice
# setup uninstall 'com.qualcomm.qti.telephonyservice'

# com.qualcomm.qti.tetherservice
# setup uninstall 'com.qualcomm.qti.tetherservice'

# com.qualcomm.shutdownlistner
# setup uninstall 'com.qualcomm.shutdownlistner'

# com.qualcomm.timeservice
# setup uninstall 'com.qualcomm.timeservice'

# com.quicinc.cne.CNEService
# setup uninstall 'com.quicinc.cne.CNEService'

# ConfigUpdater
setup disable 'com.google.android.configupdater'
app_clear 'com.google.android.configupdater'

# DunService
# setup uninstall 'jp.co.sharp.android.dun'

# EmopaSystemService
# setup uninstall 'jp.co.sharp.android.emopa.systemservice'

# Exchangeサービス
setup disable 'com.android.exchange'
app_clear 'com.android.exchange'

# Feel Home
# setup uninstall 'jp.co.sharp.android.feeluxhome'

# Feel Homeテーマ（ColorPop Blue）
# setup uninstall 'jp.co.sharp.android.feelux.theme.colorpop02'

# Feel Homeテーマ（ColorPop Green）
# setup uninstall 'jp.co.sharp.android.feelux.theme.colorpop01'

# Feel Homeテーマ（ColorPop Orange）
# setup uninstall 'jp.co.sharp.android.feelux.theme.colorpop05'

# Feel Homeテーマ（ColorPop Purple）
# setup uninstall 'jp.co.sharp.android.feelux.theme.colorpop03'

# Feel Homeテーマ（ColorPop Yellow）
# setup uninstall 'jp.co.sharp.android.feelux.theme.colorpop04'

# Feel Homeテーマ（Natural Wood1）
# setup uninstall 'jp.co.sharp.android.feelux.theme.natural01'

# Feel Homeテーマ（Natural Wood2）
# setup uninstall 'jp.co.sharp.android.feelux.theme.natural02'

# Feel Homeテーマ（Natural Wood3）
# setup uninstall 'jp.co.sharp.android.feelux.theme.natural03'

# FidoCryptoService
# setup uninstall 'com.qualcomm.qti.auth.fidocryptoservice'

# FidoSuiService
# setup uninstall 'com.qualcomm.qti.auth.fidosuiservice'

# FotaRecovery
# setup uninstall 'jp.co.sharp.android.fotarecovery'

# Fused Location
# setup uninstall 'com.android.location.fused'

# Gmail
setup disable 'com.google.android.gm'
app_clear 'com.google.android.gm'

# Google キーボード
setup disable 'com.google.android.inputmethod.latin'
app_clear 'com.google.android.inputmethod.latin'

# Google Backup Transport
setup disable 'com.google.android.backuptransport'
app_clear 'com.google.android.backuptransport'

# Google Nowランチャー
# setup uninstall 'com.google.android.launcher'

# Google One Time Init
setup disable 'com.google.android.onetimeinitializer'
app_clear 'com.google.android.onetimeinitializer'

# Google Play ストア
setup disable 'com.android.vending'
app_clear 'com.android.vending'

# Google Play Music
setup disable 'com.google.android.music'
app_clear 'com.google.android.music'

# Google Playムービー＆TV
setup disable 'com.google.android.videos'
app_clear 'com.google.android.videos'

# Google Play開発者サービス
# setup uninstall 'com.google.android.gms'

# Googleアカウントマネージャー
setup disable 'com.google.android.gsf.login'
app_clear 'com.google.android.gsf.login'

# Googleアプリ
# setup uninstall 'com.google.android.googlequicksearchbox'

# Googleサービスフレームワーク
setup disable 'com.google.android.gsf'
app_clear 'com.google.android.gsf'

# Googleテキスト読み上げエンジン
setup disable 'com.google.android.tts'
app_clear 'com.google.android.tts'

# Googleの連絡先の同期
setup disable 'com.google.android.syncadapters.contacts'
app_clear 'com.google.android.syncadapters.contacts'

# Googleパートナーのセットアップ
setup disable 'com.google.android.partnersetup'
app_clear 'com.google.android.partnersetup'

# GsmaService
# setup uninstall 'com.sh.gsma.services.nfc'

# HikariEffectManagerService
# setup uninstall 'jp.co.sharp.android.service.hikarieffect'

# HTMLビューア
setup disable 'com.android.htmlviewer'
app_clear 'com.android.htmlviewer'

# Input Devices
# setup uninstall 'com.android.inputdevices'

# Intent Filter Verification Service
setup disable 'com.android.statementservice'
app_clear 'com.android.statementservice'

# jp.co.sharp.android.appframework.backyard
# setup uninstall 'jp.co.sharp.android.appframework.backyard'

# jp.co.sharp.android.clipboardhelper
# setup uninstall 'jp.co.sharp.android.clipboardhelper'

# jp.co.sharp.android.imageplugin.server
# setup uninstall 'jp.co.sharp.android.imageplugin.server'

# jp.co.sharp.android.intent
# setup uninstall 'jp.co.sharp.android.intent'

# jp.co.sharp.android.lopt
# setup uninstall 'jp.co.sharp.android.lopt'

# jp.co.sharp.android.pedometer.framework.server
# setup uninstall 'jp.co.sharp.android.pedometer.framework.server'

# jp.co.sharp.android.poweroffwarning
# setup uninstall 'jp.co.sharp.android.poweroffwarning'

# Live Wallpaper Picker
# setup uninstall 'com.android.wallpaper.livepicker'

# LocationServices
# setup uninstall 'com.qualcomm.location'

# Luckyくじ
setup uninstall 'jp.co.rakuten.rakutenluckykuji'

# microSDバックアップ
# setup uninstall 'jp.co.sharp.android.backuprestore'

# MmsService
# setup uninstall 'com.android.mms.service'

# Mobile Select
setup uninstall 'com.mobileselect.somcprein'

# Mobile Select Starter
setup disable 'jp.co.sharp.android.mobileselectstarter'
app_clear 'jp.co.sharp.android.mobileselectstarter'

# MusicFX
setup disable 'com.android.musicfx'
app_clear 'com.android.musicfx'

# NFC/おサイフケータイ ロック
# setup uninstall 'jp.co.sharp.android.felicalockapp'

# NFC/おサイフケータイ 設定
# setup uninstall 'jp.co.sharp.android.nfcsettings'

# NFCサービス
# setup uninstall 'com.android.nfc'

# OfficeSuiteShortcutApp
setup disable 'com.mobisystems.office'
app_clear 'com.mobisystems.office'

# org.codeaurora.bluetooth
# setup uninstall 'org.codeaurora.bluetooth'

# org.codeaurora.btmultisim
# setup uninstall 'org.codeaurora.btmultisim'

# org.codeaurora.ims
# setup uninstall 'org.codeaurora.ims'

# PacProcessor
# setup uninstall 'com.android.pacprocessor'

# PrintSmash
setup uninstall 'jp.co.sharp.printsystem'

# ProxyHandler
# setup uninstall 'com.android.proxyhandler'

# Rakuten Music
setup uninstall 'jp.co.rakuten.music'

# Rakuten.FM
setup uninstall 'fm.rakuten.android.apps'

# S-Shoin
setup disable 'jp.co.sharp.android.iwnnime.ml'
app_clear 'jp.co.sharp.android.iwnnime.ml'

# SampleAuthenticatorService
# setup uninstall 'com.qualcomm.qti.auth.sampleauthenticatorservice'

# SampleExtAuthService
# setup uninstall 'com.qualcomm.qti.auth.sampleextauthservice'

# SecureExtAuthService
# setup uninstall 'com.qualcomm.qti.auth.secureextauthservice'

# SecureSampleAuthService
# setup uninstall 'com.qualcomm.qti.auth.securesampleauthservice'

# SettingDefaultHomeActivity
# setup uninstall 'jp.co.sharp.android.settingDefaultHome'

# Settings Storage EX
# setup uninstall 'jp.co.sharp.android.providers.settingsex'

# Sgsc
# setup uninstall 'jp.co.sharp.android.sgsc'

# SHカメラ
setup disable 'jp.co.sharp.android.camera'
app_clear 'jp.co.sharp.android.camera'

# SHツール
setup disable 'jp.co.sharp.android.lifekit'
app_clear 'jp.co.sharp.android.lifekit'

# SH変換辞書更新データ
setup disable 'jp.co.sharp.android.iwnndictionarydata'
app_clear 'jp.co.sharp.android.iwnndictionarydata'

# SHFidoAsm
# setup uninstall 'jp.co.sharp.android.SHFidoAsm'

# SHSHOW
setup disable 'sharp.jp.android.makersiteappli'
app_clear 'sharp.jp.android.makersiteappli'

# SIM Toolkit
# setup uninstall 'com.android.stk'

# SmartScreenOff
# setup uninstall 'jp.co.sharp.android.smartscreenoff'

# SmsBackup
# setup uninstall 'jp.co.sharp.android.smsbackup'

# SVI Settings
# setup uninstall 'com.qualcomm.svi'

# TwistMagic
setup disable 'jp.co.sharp.android.twistmagic'
app_clear 'jp.co.sharp.android.twistmagic'

# Viber
setup uninstall 'com.viber.voip'

# VpnDialogs
# setup uninstall 'com.android.vpndialogs'

# WbcService
# setup uninstall 'com.quicinc.wbcserviceapp'

# Wfd Service
# setup uninstall 'com.qualcomm.wfd.service'

# YouTube
setup disable 'com.google.android.youtube'
app_clear 'com.google.android.youtube'
