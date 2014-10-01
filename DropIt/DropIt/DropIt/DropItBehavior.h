//
//  DropIt.h
//  DropIt
//
//  Created by Gyurme Dahdul on 11/04/14.
//  Copyright (c) 2014 Gyurme Dahdul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropItBehavior : UIDynamicBehavior


- (void)addItem:(id <UIDynamicItem>)item;
- (void)removeItem:(id <UIDynamicItem>)item;

@end