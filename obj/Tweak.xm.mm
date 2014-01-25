#line 1 "Tweak.xm"
#include <logos/logos.h>
#include <substrate.h>
@class SBFGlintyStringView; @class SBLockScreenView; 
static void (*_logos_orig$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$)(SBLockScreenView*, SEL, id); static void _logos_method$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$(SBLockScreenView*, SEL, id); static void (*_logos_orig$_ungrouped$SBFGlintyStringView$setChevron$)(SBFGlintyStringView*, SEL, id); static void _logos_method$_ungrouped$SBFGlintyStringView$setChevron$(SBFGlintyStringView*, SEL, id); 

#line 1 "Tweak.xm"


static NSString* DTtext = nil;
static NSString* Timetext = nil;

 	static void _logos_method$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$(SBLockScreenView* self, SEL _cmd, id arg1) {

    	NSDate* today = [NSDate date];
 		  NSCalendar* cal = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
 		  NSDateComponents* components = [cal components:(NSHourCalendarUnit) fromDate:today];
 		  NSInteger hour = [components hour];
 		  NSDateFormatter* dateFormatter=[[NSDateFormatter alloc]init];
 		  NSString* slideText = [NSString stringWithFormat:@"%@, %@.", Timetext, DTtext];
      NSString* noPunct = [NSString stringWithFormat:@"%@ %@", Timetext, DTtext];
      NSString* japaneseLang = [NSString stringWithFormat:@"%@、%@さん", Timetext, DTtext];
      NSString* arabicLang = [NSString stringWithFormat:@"%@ %@.", Timetext, DTtext];
   		[dateFormatter setDateFormat:@"hh:mm:ss"];

      NSDictionary *lang = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
      NSDictionary *vulgar = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
      NSDictionary *enable = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
      NSMutableDictionary *name = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];

      if ([[enable objectForKey:@"enableSwitch"] boolValue]) {

          DTtext = ([name objectForKey:@"DTtext"] ? [name objectForKey:@"DTtext"] : DTtext);


          if ([[lang objectForKey:@"Language"] integerValue] == 0) {

              if (hour < 17) {

                  Timetext = @"Good afternoon";

              }
              if (hour >= 17) {

                  Timetext = @"Good evening";

              }
              if (hour < 12) {

                  Timetext = @"Good morning";

              }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 1) {

              if (hour < 17) { 
    
                  Timetext = @"Buenos tardes"; 
                    
              } 
              if (hour >= 17) {

                  Timetext = @"Buenas noches"; 
            
              }
              if (hour < 12) {

                  Timetext = @"Buenas días"; 

              }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 2) {

              if (hour < 17) { 
    
                 Timetext = @"Goedemiddag"; 
                    
              } 
              if (hour >= 17) {

                 Timetext = @"Goedenavond"; 
            
             }
              if (hour < 12) {

                 Timetext = @"Goedemorgen"; 
             }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 3){


           if (hour < 17) { 
    
                Timetext = @"Guten Tag"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Gutten abend"; 
            
            }
            if (hour < 12) {

                Timetext = @"Guten morgen"; 
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 4){


           if (hour < 17) { 
    
                Timetext = @"Добър ден"; 
                    
            } 
            if (hour >= 17) {

                 Timetext = @"Добър вечер"; 
            
            }
            if (hour < 12) {

                 Timetext = @"Добро утро"; 
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 5){


            if (hour < 17) { 
    
                Timetext = @"Hyvää iltapäivää"; 
                    
            } 
            if (hour >= 17) {

                 Timetext = @"Hyvää iltaa"; 
            
            }
            if (hour < 12) {

                 Timetext = @"Hyvää huomenta"; 
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 6){


            if (hour < 17) { 
    
                Timetext = @"Bon après-midi"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Bonsoir"; 
            
            }
            if (hour < 12) {

                Timetext = @"Bonjour"; 
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 7){


            if (hour < 17) { 
    
                Timetext = @"Bom tarde"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Boa noite"; 
            
            }
            if (hour < 12) {

                Timetext = @"Bom dia"; 
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 8){

            if (hour < 17) { 
    
                Timetext = @"Selamat Tengah Hari"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Selamat Petang"; 
            
            }
            if (hour < 12) {

                Timetext = @"Selamat Pagi"; 

            }
        } else if ([[lang objectForKey:@"Language"] integerValue] == 9){

            if (hour < 17) { 
    
                Timetext = @"צהריים טובים"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"ערב טוב"; 
            
            }
            if (hour < 12) {

                Timetext = @"בוקר טוב"; 
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 10){


           if (hour < 17) { 
    
                Timetext = @"こんにちは"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"こんばんは"; 
            
            }
            if (hour < 12) {

                Timetext = @"おはよう"; 

            } 
        
        } else if ([[lang objectForKey:@"Language"] integerValue] == 11){


           if (hour < 17) { 
    
                Timetext = @"Καλὸ ἀπόγευμα"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Καλησπέρα"; 
            
            }
            if (hour < 12) {

                Timetext = @"Καλημέρα"; 

            }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 12){


           if (hour < 17) { 
    
                Timetext = @"مساء الخير،"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"مساء الخير،"; 
            
            }
            if (hour < 12) {

                Timetext = @"صباح الخير،"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 13){


           if (hour < 17) { 
    
                Timetext = @"午安"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"晚安"; 
            
            }
            if (hour < 12) {

                Timetext = @"早安"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 14){


           if (hour < 17) { 
    
                Timetext = @"Добрый день"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Добрый вечер"; 
            
            }
            if (hour < 12) {

                Timetext = @"Доброе утро"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 15){


           if (hour < 17) { 
    
                Timetext = @"God eftermiddag"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"God kväll"; 
            
            }
            if (hour < 12) {

                Timetext = @"God morgon"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 16){


           if (hour < 17) { 
    
                Timetext = @"Dzień dobry"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Dobry wieczór"; 
            
            }
            if (hour < 12) {

                Timetext = @"Dzień dobry"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 17){


           if (hour < 17) { 
    
                Timetext = @"God ettermiddag"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"God kveld"; 
            
            }
            if (hour < 12) {

                Timetext = @"God morgen"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 18){


           if (hour < 17) { 
    
                Timetext = @"Buon pomeriggio"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Buona sera"; 
            
            }
            if (hour < 12) {

                Timetext = @"Buongiorno"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 19){


           if (hour < 17) { 
    
                Timetext = @"Xin chào buổi chiều"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Chào buổi tối"; 
            
            }
            if (hour < 12) {

                Timetext = @"Chào buổi sáng"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 20){


           if (hour < 17) { 
    
                Timetext = @"Labdien"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Labvakar"; 
            
            }
            if (hour < 12) {

                Timetext = @"Labrīt"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 21){


           if (hour < 17) { 
    
                Timetext = @"God eftermiddag"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"God aften"; 
            
            }
            if (hour < 12) {

                Timetext = @"God morgen"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 22){


           if (hour < 17) { 
    
                Timetext = @"Mirëdita"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Mirëmbrëma"; 
            
            }
            if (hour < 12) {

                Timetext = @"Mirëmëngjesi"; 
 
            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 23){


           if (hour < 17) { 
    
                Timetext = @"Dobré odpoledne"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Dobrý večer"; 
            
            }
            if (hour < 12) {

                Timetext = @"Dobré ráno"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 24){


           if (hour < 17) { 
    
                Timetext = @"Szép napot"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Szép estét"; 
            
            }
            if (hour < 12) {

                Timetext = @"Jó reggelt"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 25){


           if (hour < 17) { 
    
                Timetext = @"Magandang hapon po"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Magandang gabi po"; 
            
            }
            if (hour < 12) {

                Timetext = @"Magandang umaga po"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 26){


           if (hour < 17) { 
    
                Timetext = @"Boa Tarde"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"Boa Noite"; 
            
            }
            if (hour < 12) {

                Timetext = @"Bom Dia"; 

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 27){


           if (hour < 17) { 
    
                Timetext = @"İyi Günler"; 
                    
            } 
            if (hour >= 17) {

                Timetext = @"İyi Akşamlar"; 
            
            }
            if (hour < 12) {

                Timetext = @"Günaydın"; 

            }

          }

          if ([[vulgar objectForKey:@"vulgarSwitch"] boolValue]) {

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

            if ([[lang objectForKey:@"Language"] integerValue] == 10) {

                arg1 = japaneseLang;
            }

             if ([[lang objectForKey:@"Language"] integerValue] == 12) {

                arg1 = arabicLang;
            }

            [DTtext retain];
            [lang release];
            [vulgar release];
            [enable release];  

            arg1 = slideText;
    
  }



         NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
        if ([[prefs objectForKey:@"punctSwitch"] boolValue]) {

             arg1 = noPunct;

      }


 		_logos_orig$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$(self, _cmd, arg1);

  }





	static void _logos_method$_ungrouped$SBFGlintyStringView$setChevron$(SBFGlintyStringView* self, SEL _cmd, id arg1) {

	NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
 	 		if ([[prefs objectForKey:@"chevronSwitch"] boolValue]) {

			return;
			
		}
		
		return _logos_orig$_ungrouped$SBFGlintyStringView$setChevron$(self, _cmd, arg1);
	}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenView = objc_getClass("SBLockScreenView"); MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenView, @selector(setCustomSlideToUnlockText:), (IMP)&_logos_method$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenView$setCustomSlideToUnlockText$);Class _logos_class$_ungrouped$SBFGlintyStringView = objc_getClass("SBFGlintyStringView"); MSHookMessageEx(_logos_class$_ungrouped$SBFGlintyStringView, @selector(setChevron:), (IMP)&_logos_method$_ungrouped$SBFGlintyStringView$setChevron$, (IMP*)&_logos_orig$_ungrouped$SBFGlintyStringView$setChevron$);} }
#line 620 "Tweak.xm"
