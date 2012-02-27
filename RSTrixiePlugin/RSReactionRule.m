//
//  RSReactionRule.m
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSReactionRule.h"

@implementation RSReactionRule

@synthesize target;
@synthesize action;
@synthesize delta;
@synthesize delay;
@synthesize period;

@synthesize callback;


- (NSString *) description {
	NSString * desc = [NSString stringWithFormat:@"<%@ %p> { \n",[self className],self];

	desc = [desc stringByAppendingFormat:@"\t'target':'%@',\n",			[self target]];
	desc = [desc stringByAppendingFormat:@"\t'action':'%@',\n",			[self action]];
	desc = [desc stringByAppendingFormat:@"\t'delta':'%@',\n",			[self delta]];	
	desc = [desc stringByAppendingFormat:@"\t'delay':%lu,\n",			[self delay]];	
	desc = [desc stringByAppendingFormat:@"\t'period':%lu,\n",			[self period]];	
	desc = [desc stringByAppendingFormat:@"\t'callback':\"%@\"',\n",	[self callback]];
	
	desc = [desc stringByAppendingString:@"}\n"];
	return desc;
}

@end
