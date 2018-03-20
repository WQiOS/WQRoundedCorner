
//使用这个类就可以了
#import <UIKit/UIKit.h>
#import "UIImage+WQRadius.h"

@interface UIView (RoundedCorner)

typedef void (^WQRoundedCornerCompletionBlock)(UIImage *image);

/**
 设置控件的阴影

 @param color    阴影颜色
 @param offset   阴影的偏移量
 @param opacity  阴影的透明度
 @param radius   阴影的半径
 @param height   阴影的高度
 */
- (void)setShadowColor:(UIColor *)color shadowOffset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius shadowHeight:(CGFloat)height;

/**设置圆角背景图，默认 UIViewContentModeScaleAspectFill 模式*/
- (void)setCornerRadius:(CGFloat)radius
          backgroundColor:(UIColor *)color;

/**设置圆角背景图，默认 UIViewContentModeScaleAspectFill 模式*/
- (void)setCornerWQRadius:(WQRadius)radius
            backgroundColor:(UIColor *)color;

/**设置 contentMode 模式的圆角背景图*/
- (void)setCornerRadius:(CGFloat)radius
                    image:(UIImage *)image
              contentMode:(UIViewContentMode)contentMode;

/**设置 contentMode 模式的圆角背景图*/
- (void)setCornerWQRadius:(WQRadius)radius
                      image:(UIImage *)image
                contentMode:(UIViewContentMode)contentMode;

/**设置圆角边框*/
- (void)setCornerRadius:(CGFloat)radius
              borderColor:(UIColor *)borderColor
              borderWidth:(CGFloat)borderWidth
          backgroundColor:(UIColor *)backgroundColor;

/**设置圆角边框*/
- (void)setCornerWQRadius:(WQRadius)radius
                borderColor:(UIColor *)borderColor
                borderWidth:(CGFloat)borderWidth
            backgroundColor:(UIColor *)backgroundColor;

/**配置所有属性配置圆角背景图*/
- (void)setCornerWQRadius:(WQRadius)radius
                      image:(UIImage *)image
                borderColor:(UIColor *)borderColor
                borderWidth:(CGFloat)borderWidth
            backgroundColor:(UIColor *)backgroundColor
                contentMode:(UIViewContentMode)contentMode;

/**配置所有属性配置圆角背景图*/
- (void)setCornerWQRadius:(WQRadius)radius
                      image:(UIImage *)image
                borderColor:(UIColor *)borderColor
                borderWidth:(CGFloat)borderWidth
            backgroundColor:(UIColor *)backgroundColor
                contentMode:(UIViewContentMode)contentMode
                       size:(CGSize)size
                   forState:(UIControlState)state
                 completion:(WQRoundedCornerCompletionBlock)completion;

@end
