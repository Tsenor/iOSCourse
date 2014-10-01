//
//  CardGameViewController.m
//  MatchismoFromLectureTwo
//
//  Created by Gyurme Dahdul on 4/11/13.
//  Copyright (c) 2013 Gyurme Dahdul. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic)int flipCount;
@property (nonatomic)  Deck *deck;
@end

@implementation CardGameViewController

- (void)viewDidLoad {
    [self initializeDeck];
    [super viewDidLoad];
}

- (void) initializeDeck {
     Deck *deck = [[Deck alloc] init];
    for ( NSString* suit in [PlayingCard validSuits]) {
        for (int i =1; i<= [PlayingCard maxRank]; i++) {
            PlayingCard* playingCard = [[PlayingCard alloc]init];
            [playingCard setRank:i];
            [playingCard setSuit:suit];
            [deck addCard:playingCard];
        }
    }
    self.deck = deck;
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
    [sender setTitle:@"" forState:UIControlStateNormal];
        
    } else {
        
        Card *playingCard = [self.deck drawRandomCard];
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        if ([playingCard contents]) {
            [sender setTitle:[playingCard contents] forState:UIControlStateNormal];
        }
        else {
            [sender setTitle:@"Out Of Cards" forState:UIControlStateNormal];
        }
        
    }
    
    self.flipCount++;

}

- (void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat: @"Flips: %d",flipCount];
    NSLog(@"Flipped %d times",flipCount);
}

@end
