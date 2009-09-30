#!/bin/sh

mkdir -p proprietary

adb pull /system/lib/libopencorehw.so proprietary/libopencorehw.so
