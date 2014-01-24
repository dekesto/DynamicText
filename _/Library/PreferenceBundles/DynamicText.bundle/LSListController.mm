#define PREFERENCES 1

NSBundle *prefsBundle;

#define IN_SPRINGBOARD (SPRINGBOARD || [[NSBundle mainBundle].bundleIdentifier isEqualToString:@"com.apple.springboard"])

#import "LSListController.h"

@implementation LSListController

#pragma mark - PSListController

- (id)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"LSOptions" target:self];
	}

	return _specifiers;
}

- (void)save {

	[self.view endEditing:YES];
	
}

@end
