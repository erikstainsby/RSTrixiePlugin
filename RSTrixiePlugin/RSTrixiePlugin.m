//
//  RSTrixiePlugin.m
//  RSTrixiePlugin
//
//  Created by Erik Stainsby on 12-02-15.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSTrixiePlugin.h"

#define kRSErrorFormat @"%s is not implemented yet in subclass %@"
#define kRSExceptionName @"RSTrixieNotImplementedException"

@implementation RSTrixiePlugin

@synthesize name=_name;
@synthesize menuItem=_menuItem;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if( nibNameOrNil == nil ) nibNameOrNil = @"RSTrixiePluginDefaultView";
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		_name = @"Unnamed plugin";
    }
    return self;
}

- (NSString*) nibName {
	return [self className];
}

- (NSBundle*) nibBundle {	
	NSString * myBundlePath = [NSBundle pathForResource:[self nibName] ofType:@"bundle" inDirectory:[[NSBundle mainBundle]builtInPlugInsPath]];
		//	NSLog(@"%s- [%04d] myBundlePath: %@", __PRETTY_FUNCTION__, __LINE__, myBundlePath);
	return [NSBundle bundleWithPath:myBundlePath];
}

@end
