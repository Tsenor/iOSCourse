//
//  Deck.m
//  Cardgame
//
//  Created by Gyurme Dahdul on 4/11/13.
//  Copyright (c) 2013 Gyurme Dahdul. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray* cards;


@end

@implementation Deck

- (NSMutableArray*) cards {
    if (!_cards)  _cards = [[NSMutableArray alloc]init];
    return _cards;
}

- (void)addCard:(Card *)card {
    [self addCard:card atTop:NO];
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop {
    
    if(atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

- (Card *) drawRandomCard {
    Card* randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random()%[self.cards count];
        randomCard = self.cards[index];
        [_cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
