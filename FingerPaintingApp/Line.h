//
//  Line.h
//  FingerPaintingApp
//
//  Created by Elle Ti on 2017-08-05.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Line : NSObject

@property (nonatomic) NSMutableArray *points;
@property (nonatomic) UIColor *colours;

- (instancetype)initWithColor:(UIColor *)colours;

@end
