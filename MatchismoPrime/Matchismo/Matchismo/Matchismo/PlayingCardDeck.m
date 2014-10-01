//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Gyurme Dahdul on 8/12/13.
//  Copyright (c) 2013 Gyurme Dahdul. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    for ( NSString* suit in [PlayingCard validSuits]) {
        for (int i =1; i<= [PlayingCard maxRank]; i++) {
            PlayingCard* playingCard = [[PlayingCard alloc]init];
            [playingCard setRank:i];
            [playingCard setSuit:suit];
            [self addCard:playingCard];
        }
    }
    return self;
}

@end
