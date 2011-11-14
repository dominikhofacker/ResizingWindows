//
//  AppDelegate.h
//  test
//
//  Created by CCoding on 24.10.11.
//  Copyright (c) 2011 CCoding. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
 
    IBOutlet NSView *newView;
    __weak NSButton *checkbox;
    NSTimer * timer;
    double doubleValue;
    
    
   
}
- (IBAction)stopTimerMenu:(id)sender;
- (IBAction)test:(id)sender;
- (IBAction)ResizePermanently:(id)sender;


@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton *checkbox;

@end
