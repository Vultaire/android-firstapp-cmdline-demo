@ECHO OFF

REM Modify these variables appropriately
REM ====================================

SET ANDROID_SDK_PATH=D:\Program Files (x86)\Android\android-sdk
SET ANT_PATH=D:\tools\apache-ant-1.8.4

REM ====================================

REM Change to current directory of this script
%~d0
CD %~p0

REM Set up PATH
SET OLDPATH=%PATH%
SET PATH=%ANDROID_SDK_PATH%\tools;%ANDROID_SDK_PATH%\platform-tools;%ANT_PATH%\bin;%PATH%

REM Launch new console with modified environment.
START
