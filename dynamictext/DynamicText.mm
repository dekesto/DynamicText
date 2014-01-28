#import <Preferences/Preferences.h>

@interface DynamicTextListController: PSListController {
}
@end

@implementation DynamicTextListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"DynamicText" target:self] retain];
	}
	return _specifiers;

}

- (void)save {

	[self.view endEditing:YES];
	
}

-(void)twitter {

	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mobile.twitter.com/Dekesto"]];

}

- (void)submitTrans {

	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://docs.google.com/forms/d/1H7zNP-f_APokOkFEt9KLOESuqWATQKjRZg7_0LBR_b0/viewform"]];

}

@end

// vim:ft=objc
