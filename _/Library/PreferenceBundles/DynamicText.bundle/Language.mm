#import <Preferences/Preferences.h>
@interface LanguageListController : PSListController {}

@end

@implementation LanguageListController

- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Language" target:self] retain];
	}
	return _specifiers;
}

@end