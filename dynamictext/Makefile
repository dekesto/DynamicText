
include theos/makefiles/common.mk

BUNDLE_NAME = DynamicText
DynamicText_FILES = DynamicText.mm
DynamicText_INSTALL_PATH = /Library/PreferenceBundles
DynamicText_FRAMEWORKS = UIKit
DynamicText_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/DynamicText.plist$(ECHO_END)

include $(THEOS_MAKE_PATH)/aggregate.mk
