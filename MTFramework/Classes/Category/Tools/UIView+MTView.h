//
//  UIView+MTView.h
//  MTFramework
//
//  Created by Jason Li on 2018/4/18.
//

#import <UIKit/UIKit.h>

@interface UIView (MTView)
@property (nonatomic, assign) UIEdgeInsets contentInsets;

@property (nonatomic, assign) CGFloat view_x;
@property (nonatomic, assign) CGFloat view_y;
@property (nonatomic, assign) CGFloat view_width;
@property (nonatomic, assign) CGFloat view_height;
@property (nonatomic, assign) CGSize view_size;
@property (nonatomic, assign) CGPoint view_origin;

- (CGSize)contentSize;
- (CGSize)contentSizeInView:(UIView *)view;
- (CGSize)contentSizeInView:(UIView *)view atInsets:(UIEdgeInsets)inset;

@end
