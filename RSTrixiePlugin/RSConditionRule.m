//
//  RSConditionRule.m
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSConditionRule.h"

@implementation RSConditionRule

@synthesize selector;
@synthesize predicate;
@synthesize valueOf;


- (NSString *) description {
	NSString * desc = [NSString stringWithFormat:@"<%@ %p> { \n",[self className],self];
	
	desc = [desc stringByAppendingFormat:@"\t'selector':'%@',\n",		[self selector]];
	desc = [desc stringByAppendingFormat:@"\t'predicate':'%@',\n",		[self predicate]];
	desc = [desc stringByAppendingFormat:@"\t'valueOf':'%@'\n",			[self valueOf]];
	
	desc = [desc stringByAppendingString:@"}\n"];
	return desc;
}

@end
