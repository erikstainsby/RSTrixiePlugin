//
//  RSReactionPlugin.m
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSReactionPlugin.h"

@interface RSReactionPlugin ()

@end

@implementation RSReactionPlugin

@synthesize pluginName=_pluginName;
@synthesize targetField=_targetField;
@synthesize deltaField=_deltaField;
@synthesize delayField=_delayField;
@synthesize periodField=_periodField;

- (NSString *) callback {
	return [NSString stringWithFormat:@"The method [callback] requires an override in the %@ instance of subclass %@",[self pluginName],[self className]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}


- (void) setAction:(NSString *)anAction {
	_action = anAction;
}

- (NSString *) action {
	if( nil != _action ) {
		return _action;
	}
	return [[self pluginName] lowercaseString];
}


@end
