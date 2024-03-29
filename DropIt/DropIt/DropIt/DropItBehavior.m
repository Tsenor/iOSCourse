//
//  DropIt.m
//  DropIt
//
//  Created by Gyurme Dahdul on 11/04/14.
//  Copyright (c) 2014 Gyurme Dahdul. All rights reserved.
//

#import "DropItBehavior.h"

@interface DropItBehavior()

@property (strong, nonatomic) UICollisionBehavior *collider;
@property (strong,nonatomic) UIGravityBehavior *gravity;

@end

@implementation DropItBehavior

- (UIGravityBehavior *)gravity
{
    if (!_gravity) {
        _gravity = [[UIGravityBehavior alloc] init];
        _gravity.magnitude = 0.9;
    }
    return _gravity;
}

- (UICollisionBehavior *)collider
{
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

- (void)addItem:(id <UIDynamicItem>)item
{
    [self.gravity addItem:item];
    [self.collider addItem:item];
}
- (void)removeItem:(id <UIDynamicItem>)item
{
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
    
}

- (instancetype)init
{
    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collider];
    return self;
}


@end
