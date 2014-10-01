//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Gyurme Dahdul on 8/12/13.
//  Copyright (c) 2013 Gyurme Dahdul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount: (NSUInteger) count usingDeck:(Deck*) deck;

- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;


@property (nonatomic, readonly) NSInteger score;

@end
