//
//  DrawingView.h
//  FingerPaintingApp
//
//  Created by Elle Ti on 2017-06-11.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingView : UIView

- (void)moveToPoint:(CGPoint)point;
- (void)connectPoint:(CGPoint)point;

@end
