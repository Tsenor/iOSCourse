//
//  Card.m
//  Cardgame
//
//  Created by Gyurme Dahdul on 4/11/13.
//  Copyright (c) 2013 Gyurme Dahdul. All rights reserved.
//

#import "Card.h"

@interface Card(){
    NSString *myPrivateString;
}

@end

@implementation Card

- (int) match:(NSArray *)otherCards{
    int score = 0;
    for (Card* card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score += 1;
        }
    }
    return score;
}

@end


