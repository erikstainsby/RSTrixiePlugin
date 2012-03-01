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


- (void) setCallback:(NSString *) aFunc {
	_callback = aFunc;
}


- (NSString *) callback {
	
	if( nil != _callback ) {
		return _callback;
	}
	NSString * response = [NSString stringWithFormat:@"$('%@').%@(",target,action];
	if( delta ) {
		response = [response stringByAppendingFormat:@",'%@'",delta];
	}
	if( delay ) {
		response = [response stringByAppendingFormat:@",%i",delay];
	}
	if( period ) {
		response = [response stringByAppendingFormat:@",%i",period];
	}
	response = [response stringByAppendingString:@");"];
	return response;
}


- (NSString *) description {
	NSString * desc = [NSString stringWithFormat:@"<%@ %p> { \n",[self className],self];

	desc = [desc stringByAppendingFormat:@"\t'target':'%@',\n",			[self target]];
	desc = [desc stringByAppendingFormat:@"\t'action':'%@',\n",			[self action]];
	desc = [desc stringByAppendingFormat:@"\t'delta':'%@',\n",			[self delta]];	
	desc = [desc stringByAppendingFormat:@"\t'delay':%lu,\n",			[self delay]];	
	desc = [desc stringByAppendingFormat:@"\t'period':%lu,\n",			[self period]];	

	desc = [desc stringByAppendingFormat:@"\t'callback':\"%@\"\n",	[self callback]];
	
	desc = [desc stringByAppendingString:@"}"];
	return desc;
}


- (id) valueForUndefinedKey:(NSString *) key {
	NSLog(@"%s- [%04d] Undefined key: %@", __PRETTY_FUNCTION__, __LINE__, key);
	return @"undefined";
}

@end
