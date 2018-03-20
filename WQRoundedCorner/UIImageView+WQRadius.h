
#import <UIKit/UIKit.h>
#import "UIImage+WQRadius.h"

@interface UIImageView (WQRadius)

/**设置圆角背景图，默认 UIViewContentModeScaleAspectFill 模式*/
- (void)setCornerRadius:(CGFloat)radius
                 imageURL:(NSURL *)imageURL
             placeholder:(UIImage *)placeholder
                    size:(CGSize)size;

/**设置圆角背景图，默认 UIViewContentModeScaleAspectFill 模式*/
- (void)setCornerWQRadius:(WQRadius)radius
                   imageURL:(NSURL *)imageURL
                placeholder:(UIImage *)placeholder
                       size:(CGSize)size;

/**设置 contentMode 模式的圆角背景图*/
- (void)setCornerRadius:(CGFloat)radius
                 imageURL:(NSURL *)imageURL
              placeholder:(UIImage *)placeholder
              contentMode:(UIViewContentMode)contentMode
                     size:(CGSize)size;

/**设置 contentMode 模式的圆角背景图*/
- (void)setCornerWQRadius:(WQRadius)radius
                   imageURL:(NSURL *)imageURL
                placeholder:(UIImage *)placeholder
                contentMode:(UIViewContentMode)contentMode
                       size:(CGSize)size;

/**配置所有属性配置圆角背景图*/
- (void)setCornerWQRadius:(WQRadius)radius
                   imageURL:(NSURL *)imageURL
                placeholder:(UIImage *)placeholder
                borderColor:(UIColor *)borderColor
                borderWidth:(CGFloat)borderWidth
            backgroundColor:(UIColor *)backgroundColor
                contentMode:(UIViewContentMode)contentMode
                       size:(CGSize)size;

@end
