//
//  RSReactionPlugin.h
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSTrixiePlugin.h"

@interface RSReactionPlugin : RSTrixiePlugin
{
	NSString * _action;
}

@property (retain) IBOutlet NSString * action;
@property (retain) IBOutlet NSString * pluginName;
@property (retain) IBOutlet NSTextField * targetField;
@property (retain) IBOutlet NSTextField * deltaField;
@property (retain) IBOutlet NSTextField * delayField;
@property (retain) IBOutlet NSTextField * periodField;

- (NSString *) callback;

@end
