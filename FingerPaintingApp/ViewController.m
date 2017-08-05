//
//  ViewController.m
//  FingerPaintingApp
//
//  Created by Elle Ti on 2017-06-11.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"
#import "Line.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DrawingView *drawingView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panGesture:)];
    [self.drawingView addGestureRecognizer:panGesture];
}

- (IBAction)panGesture:(UIPanGestureRecognizer *)sender
{
    switch (sender.state)
    {
        case UIGestureRecognizerStateBegan:
        {
            CGPoint begin = [sender locationInView:self.view];
            Line *newLine = [[Line alloc] initWithColor:self.drawingView.paintColor];
            [newLine.points addObject:[NSValue valueWithCGPoint:begin]];
            [self.drawingView.lines addObject:newLine];
//            NSLog(@"Drawing began");
            break;
        }
        case UIGestureRecognizerStateChanged:
        {
            CGPoint moved = [sender locationInView:self.view];
            
            Line *lastLine = self.drawingView.lines.lastObject;
            [lastLine.points addObject:[NSValue valueWithCGPoint:moved]];
            [self.drawingView setNeedsDisplay];
//            NSLog(@"Moved: %@", NSStringFromCGPoint(moved));
            break;
        }
        
        default:
            break;
    }
}

- (IBAction)redButton:(UIButton *)sender
{
    self.drawingView.paintColor = [UIColor redColor];
}

- (IBAction)orangeButton:(UIButton *)sender
{
    self.drawingView.paintColor = [UIColor orangeColor];
}

- (IBAction)yellowButton:(UIButton *)sender
{
    self.drawingView.paintColor = [UIColor yellowColor];
}

- (IBAction)greenButton:(UIButton *)sender
{
    self.drawingView.paintColor = [UIColor greenColor];
}

- (IBAction)blueButton:(UIButton *)sender
{
    self.drawingView.paintColor = [UIColor blueColor];
}

- (IBAction)purpleButton:(UIButton *)sender
{
    self.drawingView.paintColor = [UIColor purpleColor];
}

@end
