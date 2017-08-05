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

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self)
    {
        _lines = [NSMutableArray array];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    for (int i = 0; i < self.lines.count; i++)
    {
        UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
        Line *line = [self.lines objectAtIndex:i];
        [line.colours setStroke];
        
        for (int j = 0; j < line.points.count; j++)
        {
            CGPoint currentPoint = [[line.points objectAtIndex:j] CGPointValue];
            
            if (j == 0)
            {
                [bezierPath moveToPoint:currentPoint];
            }
            else
            {
                [bezierPath addLineToPoint:currentPoint];
            }
        }
        [bezierPath stroke];
    }
}


@end
