//
//  PlayingCard.m
//  Cardgame
//
//  Created by Gyurme Dahdul on 4/11/13.
//  Copyright (c) 2013 Gyurme Dahdul. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

- (NSString *) contents
{
    NSString * rankString = [PlayingCard rankStrings][self.rank];
    return [rankString stringByAppendingString: self.suit];
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger) maxRank {
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSInteger)rank
{
    if (rank<= [PlayingCard maxRank]) {
        _rank =rank;
    }
}

+ (NSArray *)validSuits
{
    return @[@"♥", @"♦", @"♠", @"♣"];
}

- (void) setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit ]  ){
        _suit = suit;
    }
}

@end






