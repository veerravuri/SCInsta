#import "../../InstagramHeaders.h"
#import "../../Manager.h"

// Hide notes cell

// This will leave the tray empty, may not be what we want
%hook IGDirectNotesModelsDataSource

- (id)initWithUserSession:(id)arg1 {
    if ([SCIManager getPref:@"hide_notes_tray"]) {
        NSLog(@"[SCInsta] Hide notes tray");
        return nil;
    }

    return %orig;
}

%end