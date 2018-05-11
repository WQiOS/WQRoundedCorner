
#import <UIKit/UIKit.h>
#import "UIImage+WQRadius.h"

/**
 本库的主要用途：设置UIButton的阴影 + 圆角 + 边框
 */

@interface UIButton (WQRadius)

/**
   设置圆角背景图，默认 UIViewContentModeScaleAspectFill 模式
 */
- (void)wqSetCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size forState:(UIControlState)state;

/**
   设置圆角背景图，默认 UIViewContentModeScaleAspectFill 模式
 */
- (void)wqSetCornerWQRadius:(WQRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size forState:(UIControlState)state;

/**
   设置 contentMode 模式的圆角背景图
 */
- (void)wqSetCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size forState:(UIControlState)state;

/**
   配置所有属性配置圆角背景图
 */
- (void)wqSetCornerWQRadius:(WQRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor contentMode:(UIViewContentMode)contentMode size:(CGSize)size forState:(UIControlState)state;

@end
