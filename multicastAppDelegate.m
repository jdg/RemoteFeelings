//
//  multicastAppDelegate.m
//  multicast
//
//  Created by Jonathan George on 8/2/09.
//  Copyright JDG 2009. All rights reserved.
//

#import "multicastAppDelegate.h"
#import "multicastViewController.h"

@implementation multicastAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
