//
//  AppDelegate.m
//  KFAppleScriptHandlerAdditions
//
//  Created by ilo on 13/07/2016.
//  Copyright © 2016 Big Bear Labs. All rights reserved.
//

#import "AppDelegate.h"

#import <KFAppleScriptHandlerAdditions/KFAppleScriptHandlerAdditions.h>

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  [self pocExecuteScript];
}


-(void) pocExecuteScript {

  id url = [[NSBundle mainBundle] URLForResource:@"test" withExtension:@"scpt"];
  id err;
  NSAppleScript* script = [[NSAppleScript alloc] initWithContentsOfURL:url error:&err];
  
  
  id retVal = [script executeHandler:@"doit" withParameter:@"myParam"];
  
  
  NSLog(@"retVal: %@", retVal);
}


@end
