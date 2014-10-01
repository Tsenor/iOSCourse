//
//  DropItViewController.m
//  DropIt
//
//  Created by Gyurme Dahdul on 11/04/14.
//  Copyright (c) 2014 Gyurme Dahdul. All rights reserved.
//

#import "DropItViewController.h"
#import "DropItBehavior.h"

@interface DropItViewController () <UIDynamicAnimatorDelegate>
@property (weak, nonatomic) IBOutlet UIView *gameView;
@property (strong,nonatomic) UIDynamicAnimator *animator;
@property (strong, nonatomic) DropItBehavior *dropItBehavior;
@end

@implementation DropItViewController

static const CGSize DROP_SIZE = {40, 40};

- (UIDynamicAnimator *)animator
{
    if (!_animator) {
        _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.gameView];
    }
    return _animator;
}

- (void)dynamicAnimatorDidPause:(UIDynamicAnimator *)animator
{
    [self removeCompletedRows];
}

- (DropItBehavior*)dropItBehavior
{
    if (!_dropItBehavior) {
        _dropItBehavior = [[DropItBehavior alloc] init];
    }
    [self.animator addBehavior:_dropItBehavior];
    return _dropItBehavior;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)tap:(UITapGestureRecognizer *)sender
{
    [self drop];
    
}

- (void)drop
{
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    int x = (arc4random()%(int)self.gameView.bounds.size.width)/DROP_SIZE.width;
    frame.origin.x = x * DROP_SIZE.width;
    
    UIView *dropView = [[UIView alloc] initWithFrame:frame];
    dropView.backgroundColor = [self randomColor];
    [self.gameView addSubview:dropView];
    
    [self.dropItBehavior addItem:dropView];
}

- (UIColor*)randomColor
{
    switch (arc4random()%5) {
        case 0:
            return [UIColor blueColor];
            break;
        case 1:
            return [UIColor brownColor];
            break;
        case 2:
            return [UIColor yellowColor];
            break;
        case 3:
            return [UIColor orangeColor];
            break;
        case 4:
            return [UIColor purpleColor];
            break;
    }
    return [UIColor blackColor];
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
