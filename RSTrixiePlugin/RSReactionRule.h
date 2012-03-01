//
//  RSReactionRule.h
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSAbstractRule.h"

@interface RSReactionRule : RSAbstractRule
{
	NSString * _callback;
}
@property (retain) NSString * target;
@property (retain) NSString * action;
@property (retain) NSString * delta;
@property (assign) NSInteger delay;
@property (assign) NSInteger period;

- (NSString *) callback;
- (void) setCallback:(NSString *) aFunc;

- (id) valueForUndefinedKey:(NSString *) key;

@end
