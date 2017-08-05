//
//  DrawingView.h
//  FingerPaintingApp
//
//  Created by Elle Ti on 2017-06-11.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"

@interface DrawingView : UIView

@property (nonatomic, strong) UIColor *paintColor;
@property (nonatomic) NSMutableArray *lines;

@end
