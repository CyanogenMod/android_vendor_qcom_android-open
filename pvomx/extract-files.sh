#!/bin/sh

mkdir -p proprietary

adb pull /system/etc/01_qcomm_omx.cfg proprietary/01_qcomm_omx.cfg
adb pull /system/lib/libqcomm_omx.so proprietary/libqcomm_omx.so
