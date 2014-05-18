#import <Preferences/Preferences.h>

@interface DynamicTextListController: PSListController {
}
@end

@interface MorningListController: PSListController {
}
@end

@implementation MorningListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Morning" target:self] retain];
	}

	return _specifiers;

}

- (void)save {

	[self.view endEditing:YES];
	
}

@end

@interface AfternoonListController: PSListController {
}
@end

@implementation AfternoonListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Afternoon" target:self] retain];
	}

	return _specifiers;

}

- (void)save {

	[self.view endEditing:YES];
	
}

@end

@interface EveningListController: PSListController {
}
@end

@implementation EveningListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Evening" target:self] retain];
	}

	return _specifiers;

}

- (void)save {

	[self.view endEditing:YES];
	
}

@end

@interface NightListController: PSListController {
}
@end

@implementation NightListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Night" target:self] retain];
	}

	return _specifiers;

}

- (void)save {

	[self.view endEditing:YES];
	
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

- (void)acs {

	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://donate.cancer.org/index?don_promo"]];

}

- (void)aha {

	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://donate.heart.org/site/apps/ka/sd/donorcustom.asp?msource=2013DONOW1&c=fmJUKcOZJkI8G&b=8077571"]];

}

@end

// vim:ft=objc
