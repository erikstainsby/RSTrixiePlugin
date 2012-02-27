//
//  RSConditionPlugin.h
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSTrixiePlugin.h"

@interface RSConditionPlugin : RSTrixiePlugin

@property (retain) IBOutlet NSString * pluginName;

@property (retain) IBOutlet NSString * predicate;
@property (retain) IBOutlet NSTextField * selectorField;
@property (retain) IBOutlet NSTextField * valueOfField;

- (NSString *) expression;

@end
