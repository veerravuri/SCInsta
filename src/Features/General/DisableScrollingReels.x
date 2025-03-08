#import "../../InstagramHeaders.h"
#import "../../Manager.h"

%hook IGUnifiedVideoCollectionView
- (void)didMoveToWindow {
    %orig;

    NSLog(@"[SCInsta] Disabling scrolling reels");
    
    self.scrollEnabled = false;
}
%end