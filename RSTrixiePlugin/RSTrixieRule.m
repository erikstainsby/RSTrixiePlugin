//
//  RSCompoundRule.m
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-25.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSTrixieRule.h"

@implementation RSTrixieRule

@synthesize action;
@synthesize reactions;
@synthesize conditions;
@synthesize comment=_comment;


- (id)init
{
    self = [super init];
    if (self) {
		action =		[[RSActionRule alloc] init];
        reactions =		[NSMutableArray array];
		conditions =	[NSMutableArray array];
		_comment =		@"";
    }
    return self;
}

- (NSString *) description {
	NSString * desc = [NSString stringWithFormat:@"<%@ %p> { \n",[self className],self];
		
	desc = [desc stringByAppendingString:[action description]];
 	desc = [desc stringByAppendingString:@",\n"];
	for( RSReactionRule * r in reactions) 
	{
		desc = [desc stringByAppendingString:[r description]];
		desc = [desc stringByAppendingString:@",\n"];
	}
	for( RSConditionRule * r in conditions) 
	{
		desc = [desc stringByAppendingString:[r description]];
		desc = [desc stringByAppendingString:@",\n"];
	}

	desc = [desc stringByAppendingFormat:@"{\n\t'comment':\"%@\"\n}\n",_comment]; 

	desc = [desc stringByAppendingString:@"}\n"];
	return desc;
}
@end
