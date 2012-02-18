//
//  RSTrixiePlugin.h
//  RSTrixiePlugin
//
//  Created by Erik Stainsby on 12-02-15.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSTrixiePlugin : NSViewController
{
	NSString * _name;
	NSMenuItem * _menuItem;
}

@property (retain) IBOutlet NSString * name;
@property (retain) IBOutlet NSMenuItem * menuItem;

@end
