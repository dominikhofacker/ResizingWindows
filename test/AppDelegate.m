//
//  AppDelegate.m
//  test
//
//  Created by CCoding on 24.10.11.
//  Copyright (c) 2011 CCoding. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize checkbox;

@synthesize window = _window;


BOOL didChangeFrame;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{   
    
       
}

- (IBAction)stopTimerMenu:(id)sender {
    
    [checkbox setState:0];
    [timer invalidate];
    [[NSSound soundNamed:@"Hero.aiff"] play];
}

- (IBAction)test:(id)sender {
    didChangeFrame = !didChangeFrame;
    
    if (didChangeFrame) {
        
        [NSAnimationContext beginGrouping];
	
	// With the shift key down, do slow-mo animation
	if ([[NSApp currentEvent] modifierFlags] & NSShiftKeyMask)
	    [[NSAnimationContext currentContext] setDuration:3.0];
	
	// Call the animator instead of the view / window directly
    NSRect newFrame = NSMakeRect(300, 100, 800, 900);
	[[[self window] animator] setFrame:newFrame display:YES];
        [[[[self window] contentView] animator] addSubview:newView];
	[NSAnimationContext endGrouping];
    
    }
    else {
        
        [NSAnimationContext beginGrouping];
        
        // With the shift key down, do slow-mo animation
        if ([[NSApp currentEvent] modifierFlags] & NSShiftKeyMask)
            [[NSAnimationContext currentContext] setDuration:1.0];
        
        // Call the animator instead of the view / window directly
        NSRect newFrame = NSMakeRect(647, 410, 160, 112);
        [[[self window] animator] setFrame:newFrame display:YES];
        
        [NSAnimationContext endGrouping];
        
    }
}

- (IBAction)ResizePermanently:(id)sender {
    
    if ([checkbox state] == NSOffState) {
        
        [timer invalidate];
        
    }else {
        
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.75 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    }
    
}


- (void)onTimer {
    
    
    didChangeFrame = !didChangeFrame;
    
    if (didChangeFrame) {
        
        [NSAnimationContext beginGrouping];
        
        // With the shift key down, do slow-mo animation
        if ([[NSApp currentEvent] modifierFlags] & NSShiftKeyMask)
            [[NSAnimationContext currentContext] setDuration:1.0];
        
        // Call the animator instead of the view / window directly
        NSRect newFrame = NSMakeRect(300, 100, 800, 900);
        [[[self window] animator] setFrame:newFrame display:YES];
        [[[[self window] contentView] animator] addSubview:newView];
        [NSAnimationContext endGrouping];
        
    }
    else {
        
        [NSAnimationContext beginGrouping];
        
        // With the shift key down, do slow-mo animation
        if ([[NSApp currentEvent] modifierFlags] & NSShiftKeyMask)
            [[NSAnimationContext currentContext] setDuration:1.0];
        
        // Call the animator instead of the view / window directly
        NSRect newFrame = NSMakeRect(647, 410, 160, 112);
        [[[self window] animator] setFrame:newFrame display:YES];
        
        [NSAnimationContext endGrouping];
        
    }

    
}




@end
