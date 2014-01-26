ARCHS = armv7 armv7s arm64
include theos/makefiles/common.mk

TWEAK_NAME = DynamicText
DynamicText_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += dynamictext
include $(THEOS_MAKE_PATH)/aggregate.mk


