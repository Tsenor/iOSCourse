//
//  CardGameViewController.h
//  MatchismoFromLectureTwo
//
//  Created by Gyurme Dahdul on 4/11/13.
//  Copyright (c) 2013 Gyurme Dahdul. All rights reserved.
//
// Abstract class. Must implement methods as below.

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface CardGameViewController : UIViewController

// protected
// for subclasses
- (Deck *) createDeck; //abstract

@end
