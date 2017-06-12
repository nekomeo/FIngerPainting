//
//  DrawingView.m
//  FingerPaintingApp
//
//  Created by Elle Ti on 2017-06-11.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "DrawingView.h"

@interface DrawingView ()
@property (nonatomic, strong) UIBezierPath *path;

@end

@implementation DrawingView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    [[UIColor purpleColor] setStroke];
    self.path.lineWidth = 6.0;
    [self.path stroke];
}

- (void)stroke
{
    [self setNeedsDisplay];
}

- (void)moveToPoint:(CGPoint)point
{
    [self.path moveToPoint:point];
    [self stroke];
}

- (void)connectPoint:(CGPoint)point
{
    [self.path addLineToPoint:point];
    [self stroke];
}

- (UIBezierPath *)path
{
    if (!_path) {
        _path = [[UIBezierPath alloc] init];
    }
    return _path;
}

@end
