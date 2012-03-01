//
//  RSConditionRule.h
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSAbstractRule.h"

@interface RSConditionRule : RSAbstractRule

@property (retain) NSString * selector;
@property (retain) NSString * predicate;
@property (retain) NSString * valueOf;

- (NSString *) prerequisite;

- (id) valueForUndefinedKey:(NSString *) key;

@end
