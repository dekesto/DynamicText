include theos/makefiles/common.mk

TWEAK_NAME = DynamicText
DynamicText_FILES = Tweak.xm
DynamicText_ARCHS = armv7 arm64

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += dynamictext
include $(THEOS_MAKE_PATH)/aggregate.mk
