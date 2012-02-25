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

@property (retain) IBOutlet NSButton * preventDefaultButton;
@property (retain) IBOutlet NSButton * stopBubblingButton;

@property (retain) IBOutlet NSMutableArray * rules;


- (BOOL) hasPreventDefaultButton; 
- (BOOL) hasStopBubblingButton; 
- (BOOL) preventDefault; 
- (BOOL) stopBubbling; 

- (NSString *) bindEvent;
- (NSString *) reactionSelector;
- (NSString *) reactionBehaviour;
- (NSString *) callbackFunction;
- (NSString *) predicate;


@end
