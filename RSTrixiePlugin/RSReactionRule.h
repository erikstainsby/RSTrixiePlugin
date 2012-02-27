//
//  RSReactionRule.h
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSAbstractRule.h"

@interface RSReactionRule : RSAbstractRule

@property (retain) NSString * target;
@property (retain) NSString * action;
@property (retain) NSString * delta;
@property (assign) NSInteger delay;
@property (assign) NSInteger period;

@property (retain) NSString * callback;

@end
