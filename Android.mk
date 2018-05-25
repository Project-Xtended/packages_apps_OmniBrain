# Copyright (C) 2016 The OmniROM Project
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_STATIC_ANDROID_LIBRARIES := \
    android-support-v4 \
    android-support-v13 \
    android-support-v7-preference \
    android-support-v14-preference

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res \
    frameworks/support/v7/preference/res \
    frameworks/support/v14/preference/res

LOCAL_AAPT_FLAGS := --auto-add-overlay \
    --extra-packages android.support.v7.preference \
    --extra-packages android.support.v14.preference \
    --extra-packages android.support.v17.preference

LOCAL_SRC_FILES := $(call all-java-files-under, src)

include packages/apps/OmniLib/common.mk

LOCAL_PACKAGE_NAME := OmniBrain
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MIN_SDK_VERSION := 27
LOCAL_USE_AAPT2 := true
include $(BUILD_PACKAGE)
