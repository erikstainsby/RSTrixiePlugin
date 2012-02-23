//
//  RSTrixieRule.m
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-17.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "RSTrixieRule.h"

@implementation RSTrixieRule

@synthesize actionSelector = _actionSelector;		// plugin hasSelector ?
@synthesize bindSelector = _bindSelector;
@synthesize bindEvent = _bindEvent;
@synthesize preventDefault = _preventDefault;
@synthesize stopBubbling = _stopBubbling;

@synthesize callbackFunction = _callbackFunction;	// plugin defines the markup in this method 

@synthesize conditionSelector = _conditionSelector;	// plugin hasSelector ?
@synthesize predicate = _predicate;

- (NSString *) description {
	NSString * desc = [NSString stringWithFormat:@"<%@ %p> { \n",[self className],self];
	
	desc = [desc stringByAppendingFormat:@"\t'bindEvent':'%@',\n",_bindEvent];
	desc = [desc stringByAppendingFormat:@"\t'actionSelector':%i,\n",_actionSelector];
	desc = [desc stringByAppendingFormat:@"\t'bindSelector':'%@',\n",_bindSelector];
	desc = [desc stringByAppendingFormat:@"\t'preventDefault':%i,\n",_preventDefault];
	desc = [desc stringByAppendingFormat:@"\t'stopBubbling':%i,\n",_stopBubbling];
	desc = [desc stringByAppendingFormat:@"\t'callbackFunction':\"%@\"',\n",_callbackFunction];
	desc = [desc stringByAppendingFormat:@"\t'conditionSelector':'%@',\n",_conditionSelector];
	desc = [desc stringByAppendingFormat:@"\t'predicate':'%@',\n",_predicate];
	desc = [desc stringByAppendingString:@"}\n"];
	return desc;
}

- (NSString *) emitScript {
	
	NSString * script = @"";
	if( _actionSelector ) {
		script = [script stringByAppendingFormat:@"$('%@').bind('%@',", _bindSelector, _bindEvent];
	}
	else {
		// page level events
		script = [script stringByAppendingFormat:@"$().bind('%@',", _bindEvent];
	}
	script = [script stringByAppendingFormat:@"%@)",_callbackFunction];
	if( _preventDefault ) script = [script stringByAppendingString:@".preventDefault()"];
	if( _stopBubbling ) script = [script stringByAppendingString:@".stopBubbling()"];
	
	return [script stringByAppendingString:@";\n"];
}


@end
