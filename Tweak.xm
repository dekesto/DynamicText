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
 		NSString* slideText = [NSString stringWithFormat:@"%@, %@.", Timetext, DTtext];
        NSString* noPunct = [NSString stringWithFormat:@"%@ %@", Timetext, DTtext];
        NSString* japaneseLang = [NSString stringWithFormat:@"%@、%@さん", Timetext, DTtext];
   		[dateFormatter setDateFormat:@"hh:mm:ss"];

        NSDictionary *lang = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
            if ([[lang objectForKey:@"Language"] integerValue] == 0) {

    	   if (hour < 17) { 
   	
        	    Timetext = @"Good Afternoon";
    				
    	    } 
    	    if (hour >= 17) {

    		   Timetext = @"Good Evening";
    		
     	    }
     	    if (hour < 12) {

    		   Timetext = @"Good Morning";

    	    }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 1){


           if (hour < 17) { 
    
                Timetext = @"Buenos días";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Buenas tardes";
            
            }
            if (hour < 12) {

               Timetext = @"Buenas noches";

            }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 2){


           if (hour < 17) { 
    
                Timetext = @"Goedemorgen";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Goedemiddag";
            
            }
            if (hour < 12) {

               Timetext = @"Goedenavond";
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 3){


           if (hour < 17) { 
    
                Timetext = @"Guten Morgen";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Wie Geht es Du";
            
            }
            if (hour < 12) {

               Timetext = @"Guten Abend";
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 4){


           if (hour < 17) { 
    
                Timetext = @"Добро утро";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Добър ден";
            
            }
            if (hour < 12) {

               Timetext = @"Добър вечер";
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 5){


           if (hour < 17) { 
    
                Timetext = @"Hyvää huomenta";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Hyvää iltapäivää";
            
            }
            if (hour < 12) {

               Timetext = @"Hyvää iltaa";
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 6){


           if (hour < 17) { 
    
                Timetext = @"Bon Matin";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Bon après-midi";
            
            }
            if (hour < 12) {

               Timetext = @"Bonsoir";
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 7){


           if (hour < 17) { 
    
                Timetext = @"Bom Dia";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Boa Tarde";
            
            }
            if (hour < 12) {

               Timetext = @"Boa Noite";
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 8){


           if (hour < 17) { 
    
                Timetext = @"Selamat Pagi";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Selamat Tengah Hari";
            
            }
            if (hour < 12) {

               Timetext = @"Selamat Petang";

            }
        
        
        } else if ([[lang objectForKey:@"Language"] integerValue] == 9){

            if (hour < 17) { 
    
                Timetext = @"ערב טוב";
                    
            } 
            if (hour >= 17) {

               Timetext = @"צהריים טובים";
            
            }
            if (hour < 12) {

               Timetext = @"בוקר טוב";
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 10){


           if (hour < 17) { 
    
                Timetext = @"おはよう";
                    
            } 
            if (hour >= 17) {

               Timetext = @"こんにちは";
            
            }
            if (hour < 12) {

               Timetext = @"こんばんは";

            } 
        
        
        } else if ([[lang objectForKey:@"Language"] integerValue] == 11){


           if (hour < 17) { 
    
                Timetext = @"Καλημέρα";
                    
            } 
            if (hour >= 17) {

               Timetext = @"Καλὸ ἀπόγευμα";
            
            }
            if (hour < 12) {

               Timetext = @"Καλησπέρα";

            }
        } 

        if (DTtext && enableSwitch){

                arg1 = slideText;

            if ([[lang objectForKey:@"Language"] integerValue] == 10) {

                arg1 = japaneseLang;
            }
        }

         NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
        if ([[prefs objectForKey:@"punctSwitch"] boolValue]) {

             arg1 = noPunct;

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

static void settingschanged(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo){
    loadPrefs();
}

%ctor{

    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, settingschanged, CFSTR("com.dekesto.dynamictext.settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPrefs();
}

