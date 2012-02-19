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

@interface RSTrixiePlugin (PRIVATE) 

@property (readwrite,getter=hasSelectorField) BOOL hasSelectorField;

@end


@implementation RSTrixiePlugin

@synthesize name=_name;
@synthesize multiRowForm=_multiRowForm;
@synthesize hasSelectorField=_hasSelectorField;
@synthesize selectorField=_selectorField;

@synthesize rules;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if( nibNameOrNil == nil ) nibNameOrNil = @"RSTrixiePluginDefaultView";
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		_name = @"Unnamed plugin";
		_multiRowForm = NO;
		_hasSelectorField=NO;
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
