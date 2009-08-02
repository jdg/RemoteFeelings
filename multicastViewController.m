//
//  multicastViewController.m
//  multicast
//
//  Created by Jonathan George on 8/2/09.
//  Copyright JDG 2009. All rights reserved.
//

#import "multicastViewController.h"

@implementation multicastViewController

@synthesize txtDataToSend, log;

- (void)viewDidLoad {
	[super viewDidLoad];

	remoteFeelings = [[RemoteFeelings alloc] init];

	// Hit the server every 5 seconds, to request new feelings.
	refreshTimer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(refresh) userInfo:nil repeats:YES];
}

- (void)dealloc {
	[refreshTimer invalidate];
	[remoteFeelings release];

	self.txtDataToSend = nil;
	self.log = nil;
	[super dealloc];
}

- (IBAction) send {
	[remoteFeelings sendToRemote:txtDataToSend.text];
}

- (void) refresh {
	// Will potentially return nil (if an error), or an empty array.
	// The next time it's called, you will not receive any old feelings.  Only new ones
	// since the last call.
	NSMutableArray *feelings = [remoteFeelings loadNewFromRemote];
	NSLog(@"Loaded %@", feelings);
}

@end
