//
//  Line.m
//  FingerPaintingApp
//
//  Created by Elle Ti on 2017-08-05.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Line.h"


@implementation Line

- (instancetype)initWithColor:(UIColor *)colours
{
    self = [super init];
    if (self)
    {
        _points = [NSMutableArray array];
        _colours = colours;
    }
    return self;
}

@end
