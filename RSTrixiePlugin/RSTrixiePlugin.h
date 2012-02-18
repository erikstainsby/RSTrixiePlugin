//
//  RSTrixiePlugin.h
//  RSTrixiePlugin
//
//  Created by Erik Stainsby on 12-02-15.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RSTrixieRule.h"


@interface RSTrixiePlugin : NSViewController
{
	NSString * _name;
	BOOL _multiRowForm; 
}

@property (assign,getter=isMultiRowForm) IBOutlet BOOL multiRowForm;
@property (retain) IBOutlet NSString * name;

@property (retain) IBOutlet NSMutableArray * rules;
@property (assign) IBOutlet NSInteger indexOfLastReturned;

- (RSTrixieRule*)	fetchRule;

@end
