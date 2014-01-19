%hook SBLockScreenView

static BOOL enableSwitch = YES;
static NSString* DTtext = nil;
static NSString* Timetext = nil;

	-(void)setCustomSlideToUnlockText:(id)arg1 {

   		NSDate* today = [NSDate date];
		NSCalendar* cal = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
		NSDateComponents* components = [cal components:(NSHourCalendarUnit) fromDate:today];
		NSInteger hour = [components hour];
		NSDateFormatter* dateFormatter=[[NSDateFormatter alloc]init];
		NSString* slideText = [NSString stringWithFormat:@"%@, %@!", Timetext, DTtext];
   		[dateFormatter setDateFormat:@"hh:mm:ss"];

   		if ( hour > 12 && hour < 24 ) { 
   	
       		Timetext = @"Afternoon";
    				
   		} else {

   			Timetext = @"Morning";
    		
    	}

		if (DTtext && enableSwitch){

			arg1 = slideText;
			
		}

		%orig(arg1);

	}

%end

//Hides the Chevron (Slide Arrow) on Lockscreen
%hook SBFGlintyStringView

	-(void)setChevron:(id)arg1 {

	if (enableSwitch){

			return;
			
		}
		
		return %orig;
	}

%end

//Loads Preferences
static void loadPrefs() {

	   NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
    if(prefs)
    {
        enableSwitch = ([prefs objectForKey:@"enableSwitch"] ? [[prefs objectForKey:@"enableSwitch"] boolValue] : enableSwitch);
        DTtext = ([prefs objectForKey:@"DTtext"] ? [prefs objectForKey:@"DTtext"] : DTtext);
        [DTtext retain];
    }
    [prefs release];
}

%ctor 
{
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.dekesto.dynamictext/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPrefs();
}

