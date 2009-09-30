#!/bin/sh

mkdir -p proprietary

adb pull /system/lib/libloc_api.so proprietary/libloc_api.so
