%hook SBLockScreenView
static BOOL enableSwitch = YES;
static NSString* DTtext = @"User";
static NSString* Timetext = nil;

 	-(void)setCustomSlideToUnlockText:(id)arg1 {

    	NSDate* today = [NSDate date];
 		  NSCalendar* cal = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
 		  NSDateComponents* components = [cal components:(NSHourCalendarUnit) fromDate:today];
 		  NSInteger hour = [components hour];
 		  NSDateFormatter* dateFormatter=[[NSDateFormatter alloc]init];
 		  NSString* slideText = [NSString stringWithFormat:@"%@, %@.", Timetext, DTtext];
      NSString* noPunct = [NSString stringWithFormat:@"%@ %@", Timetext, DTtext];
      NSString* japaneseLang = [NSString stringWithFormat:@"%@、%@。", Timetext, DTtext];
      NSString* arabicLang = [NSString stringWithFormat:@"%@ %@.", Timetext, DTtext];
   		[dateFormatter setDateFormat:@"hh:mm:ss"];

      NSDictionary *lang = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
         

      if (DTtext && enableSwitch) {

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
    
                  Timetext = @"Buenas tardes"; //Good afternoon
                    
              } 
              if (hour >= 17) {

                  Timetext = @"Buenas noches"; //Good evening
            
              }
              if (hour < 12) {

                  Timetext = @"Buenos días"; //Good morning

              }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 2) {

              if (hour < 17) { 
    
                 Timetext = @"Goedemiddag"; //Good afternoon
                    
              } 
              if (hour >= 17) {

                 Timetext = @"Goedenavond"; //Good evening
            
             }
              if (hour < 12) {

                 Timetext = @"Goedemorgen"; //Good morning
             }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 3){


           if (hour < 17) { 
    
                Timetext = @"Guten Tag"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Gutten Abend"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Guten Morgen"; //Good morning
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 4){


           if (hour < 17) { 
    
                Timetext = @"Добър ден"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                 Timetext = @"Добър вечер"; //Good evening
            
            }
            if (hour < 12) {

                 Timetext = @"Добро утро"; //Good morning
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 5){


            if (hour < 17) { 
    
                Timetext = @"Hyvää iltapäivää"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                 Timetext = @"Hyvää iltaa"; //Good evening
            
            }
            if (hour < 12) {

                 Timetext = @"Hyvää huomenta"; //Good morning
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 6){


            if (hour < 17) { 
    
                Timetext = @"Bon après-midi"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Bonsoir"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Bonjour"; //Good morning
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 7){


            if (hour < 17) { 
    
                Timetext = @"Bom tarde"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Boa noite"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Bom dia"; //Good morning
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 8){

            if (hour < 17) { 
    
                Timetext = @"Selamat Tengah Hari"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Selamat Petang"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Selamat Pagi"; //Good morning

            }
        } else if ([[lang objectForKey:@"Language"] integerValue] == 9){

            if (hour < 17) { 
    
                Timetext = @"צהריים טובים"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"ערב טוב"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"בוקר טוב"; //Good morning
           }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 10){


           if (hour < 17) { 
    
                Timetext = @"こんにちは"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"こんばんは"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"おはよう"; //Good morning

            } 
        
        } else if ([[lang objectForKey:@"Language"] integerValue] == 11){


           if (hour < 17) { 
    
                Timetext = @"Καλὸ ἀπόγευμα"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Καλησπέρα"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Καλημέρα"; //Good morning

            }

        } else if ([[lang objectForKey:@"Language"] integerValue] == 12){


           if (hour < 17) { 
    
                Timetext = @"مساء الخير،"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"مساء الخير،"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"صباح الخير،"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 13){


           if (hour < 17) { 
    
                Timetext = @"午安"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"晚安"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"早安"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 14){


           if (hour < 17) { 
    
                Timetext = @"Добрый день"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Добрый вечер"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Доброе утро"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 15){


           if (hour < 17) { 
    
                Timetext = @"God eftermiddag"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"God kväll"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"God morgon"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 16){


           if (hour < 17) { 
    
                Timetext = @"Dzień dobry"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Dobry wieczór"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Dzień dobry"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 17){


           if (hour < 17) { 
    
                Timetext = @"God ettermiddag"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"God kveld"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"God morgen"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 18){


           if (hour < 17) { 
    
                Timetext = @"Buon pomeriggio"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Buona sera"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Buongiorno"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 19){


           if (hour < 17) { 
    
                Timetext = @"Xin chào buổi chiều"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Chào buổi tối"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Chào buổi sáng"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 20){


           if (hour < 17) { 
    
                Timetext = @"Labdien"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Labvakar"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Labrīt"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 21){


           if (hour < 17) { 
    
                Timetext = @"God eftermiddag"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"God aften"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"God morgen"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 22){


           if (hour < 17) { 
    
                Timetext = @"Mirëdita"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Mirëmbrëma"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Mirëmëngjesi"; //Good morning
 
            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 23){


           if (hour < 17) { 
    
                Timetext = @"Dobré odpoledne"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Dobrý večer"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Dobré ráno"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 24){


           if (hour < 17) { 
    
                Timetext = @"Szép napot"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Szép estét"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Jó reggelt"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 25){


           if (hour < 17) { 
    
                Timetext = @"Magandang hapon po"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Magandang gabi po"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Magandang umaga po"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 26){


           if (hour < 17) { 
    
                Timetext = @"Boa Tarde"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"Boa Noite"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Bom Dia"; //Good morning

            }

          } else if ([[lang objectForKey:@"Language"] integerValue] == 27){


           if (hour < 17) { 
    
                Timetext = @"İyi Günler"; //Good afternoon
                    
            } 
            if (hour >= 17) {

                Timetext = @"İyi Akşamlar"; //Good evening
            
            }
            if (hour < 12) {

                Timetext = @"Günaydın"; //Good morning

            }

          } 

          NSDictionary *vulgar = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.dekesto.dynamictext.plist"];
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


          arg1 = slideText;
    
      }

      if (enableSwitch){

        if ([[lang objectForKey:@"Language"] integerValue] == 10) {

              arg1 = japaneseLang;
          }

          if ([[lang objectForKey:@"Language"] integerValue] == 12) {

              arg1 = arabicLang;
          }
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