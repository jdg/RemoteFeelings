//
//  multicastAppDelegate.h
//  multicast
//
//  Created by Jonathan George on 8/2/09.
//  Copyright JDG 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class multicastViewController;

@interface multicastAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    multicastViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet multicastViewController *viewController;

@end

