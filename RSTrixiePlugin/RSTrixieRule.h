//
//  RSTrixieRule.h
//  RSTrixiePluginFramework
//
//  Created by Erik Stainsby on 12-02-17.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSTrixieRule : NSObject


	// Action form's attributes	
@property (assign,getter=hasActionSelector) BOOL actionSelector;
@property (retain) IBOutlet NSString * bindSelector;	// the identity of the nodeset we are acting upon
@property (retain) IBOutlet NSString * bindEvent;		// the cause of invoking this rule
@property (assign) BOOL preventDefault;
@property (assign) BOOL stopBubbling;


	// Reaction form's attributes - describes a behaviour
@property (retain) IBOutlet NSString * reactionSelector;
@property (retain) IBOutlet NSString * reactionBehaviour;

	// this block creates the callback function jQuery-encoded

@property (retain) IBOutlet NSString * callbackFunction; 


	// Condition form's qualificications 
@property (assign,getter=hasConditionSelector) BOOL conditionSelector;
@property (retain) IBOutlet NSString * predicate;		// 

@property (retain) IBOutlet NSString * comment;

- (NSString *) description;
- (NSString *) emitScript;

@end
