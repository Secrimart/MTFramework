//
//  MTViewProtocol.h
//  MTFramework
//
//  Created by Jason Li on 2018/4/18.
//

#import <Foundation/Foundation.h>

@protocol MTViewProtocol <NSObject>
@optional
- (void)initView;
- (void)initCell; // Olny for UITableViewCell

- (void)setupLayoutConstraint;

- (CGFloat)heightView;

@end

@interface UIView (MTView)<MTViewProtocol>

@end

@interface UITableViewCell (MTView) <MTViewProtocol>

@end

@interface UICollectionViewCell (MTView) <MTViewProtocol>

@end

@interface UIViewController (MTView) <MTViewProtocol>

@end
