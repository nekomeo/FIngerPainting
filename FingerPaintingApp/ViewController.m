//
//  ViewController.m
//  FingerPaintingApp
//
//  Created by Elle Ti on 2017-06-11.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"
#import <UIKit/UIKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DrawingView *drawingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(paint:)];
    [self.drawingView addGestureRecognizer:panGesture];
}

-(void)paint:(UIPanGestureRecognizer *)sender{
    switch (sender.state) {
        case UIGestureRecognizerStateBegan:{
            CGPoint begin = [sender locationInView:self.view];
            [self.drawingView moveToPoint:begin];
            NSLog(@"Drawing began");
            break;
        }
        case UIGestureRecognizerStateChanged:{
            CGPoint moved = [sender locationInView:self.view];
            [self.drawingView connectPoint:moved];
            NSLog(@"Moved: %@", NSStringFromCGPoint(moved));
            break;
        }
        case UIGestureRecognizerStateEnded:{
            CGPoint ended = [sender locationInView:self.view];
            [self.drawingView moveToPoint:ended];
            NSLog(@"Drawing ended");
            break;
        }
        default:
            break;
    }
}

@end
