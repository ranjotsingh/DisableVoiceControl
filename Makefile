export ARCHS = armv7 arm64
THEOS_DEVICE_IP = 192.168.1.9

include theos/makefiles/common.mk

TWEAK_NAME = DisableVoiceControl
DisableVoiceControl_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
