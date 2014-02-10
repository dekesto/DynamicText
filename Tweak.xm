#import <UIKit/UIKit.h>

static BOOL enableSwitch = YES;
static BOOL vulgarSwitch = NO;
static NSString* DTtext = @"User";
static NSString* morningText = nil;
static NSString* afternoonText = nil;
static NSString* eveningText = nil;
//static NSString* nightText = nil;
static NSString* Timetext = nil;

%hook SBLockScreenView

  -(void)setCustomSlideToUnlockText:(id)arg1 {

    NSDate *today = [NSDate date];
    NSCalendar *cal = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    NSDateComponents *components = [cal components:(NSHourCalendarUnit) fromDate:today];
    NSInteger hour = [components hour];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"hh:mm:ss"];

    NSString* slideText = [NSString stringWithFormat:@"%@, %@.", Timetext, DTtext];
    NSString* noPunct = [NSString stringWithFormat:@"%@ %@", Timetext, DTtext];

    if (DTtext && enableSwitch) {

        if (hour < 17) {

            Timetext = @"Good afternoon";

        }
        if (hour >= 17) {

            Timetext = @"Good evening";

        }
        if (hour < 12) {

            Timetext = @"Good morning";

        }

       // NSDictionary *vulgar = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
          
        if (vulgarSwitch) {

            if (hour < 17) { 
    
                Timetext = @"Good fucking afternoon";
                    
            } 
            if (hour >= 17) {

                Timetext = @"Good fucking evening";
            
            }
            if (hour < 12) {

                Timetext = @"Good fucking morning";

            }
        }

        if (morningText || afternoonText || eveningText) {


            if (hour < 17) { 
    
                if ([afternoonText isEqual:@""]){

                    Timetext = @"Good afternoon";

                } else {

                     Timetext = afternoonText;

                }
                    
            }


            if (hour >= 17) {

                if ([eveningText isEqual:@""]){

                    Timetext = @"Good evening";

                } else {

                    Timetext = eveningText;

                }

            }
            if (hour < 12) {

                if ([morningText isEqual:@""]) {

                    Timetext = @"Good morning";

                } else {

                    Timetext = morningText;

                }

            }

        }

        arg1 = slideText;

    }

    if (enableSwitch){

        NSDictionary *noPunctuation = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
          
        if ([[noPunctuation objectForKey:@"punctSwitch"] boolValue]) {

            arg1 = noPunct;

        }

    } 

    
    %orig(arg1);

  }

%end

//Hides the Chevron (Slide Arrow) on Lockscreen
%hook SBFGlintyStringView

	-(void)setChevron:(id)arg1 {

	   NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
 	 		if ([[prefs objectForKey:@"chevronSwitch"] boolValue]) {

			return;
			
		}
		
		return %orig;
	}

%end

static void loadPrefs() {

           NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
    if(prefs)
    {

        enableSwitch = ([prefs objectForKey:@"enableSwitch"] ? [[prefs objectForKey:@"enableSwitch"] boolValue] : enableSwitch);
        vulgarSwitch = ([prefs objectForKey:@"vulgarSwitch"] ? [[prefs objectForKey:@"vulgarSwitch"] boolValue] : vulgarSwitch);
        DTtext = ([prefs objectForKey:@"DTtext"] ? [prefs objectForKey:@"DTtext"] : DTtext);
        morningText = ([prefs objectForKey:@"morningText"] ? [prefs objectForKey:@"morningText"] : morningText);
        afternoonText = ([prefs objectForKey:@"afternoonText"] ? [prefs objectForKey:@"afternoonText"] : afternoonText);
        eveningText = ([prefs objectForKey:@"eveningText"] ? [prefs objectForKey:@"eveningText"] : eveningText);
       // nightText = ([prefs objectForKey:@"nightText"] ? [prefs objectForKey:@"nightText"] : nightText);
        [DTtext retain];
        [morningText retain];
        [afternoonText retain];
        [eveningText retain];
       // [nightText retain];

    }

    [prefs release];
}

%ctor 
{

    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.dekesto.dynamictext/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPrefs();

}
