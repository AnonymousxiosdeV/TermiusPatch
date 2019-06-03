TARGET = iphone:clang:latest:latest
ARCHS = arm64
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TermiusPatch
TermiusPatch_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
