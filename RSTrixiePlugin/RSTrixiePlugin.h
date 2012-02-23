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

}

@property (retain) IBOutlet NSString * name;
@property (assign,getter=isMultiRowForm) BOOL multiRowForm;
@property (readonly,getter=hasSelectorField) BOOL hasSelectorField;
@property (retain) IBOutlet NSTextField * selectorField;
@property (assign) BOOL preventDefault;
@property (assign) BOOL stopBubbling;

@property (retain) IBOutlet NSMutableArray * rules;


- (NSString *) bindEvent;
- (NSString *) callbackFunction;
- (NSString *) predicate;


@end
