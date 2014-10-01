//
//  PlayingCard.h
//  Cardgame
//
//  Created by Gyurme Dahdul on 4/11/13.
//  Copyright (c) 2013 Gyurme Dahdul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray*) validSuits;
+ (NSUInteger) maxRank;
+ (NSArray*) rankStrings;
@end
