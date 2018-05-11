
/**
   本库的主要用途：设置阴影 + 圆角 + 边框 （基于UIView的控件）
 */

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
- (void)wqSetShadowColor:(UIColor *)color shadowOffset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius shadowHeight:(CGFloat)height;

/**
   设置圆角背景
 */
- (void)wqSetCornerRadius:(CGFloat)radius backgroundColor:(UIColor *)color;

/**
   设置圆角背景
 */
- (void)wqSetCornerWQRadius:(WQRadius)radius backgroundColor:(UIColor *)color;

/**
   设置圆角边框
 */
- (void)wqSetCornerRadius:(CGFloat)radius borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor;

/**
   设置圆角边框
 */
- (void)wqSetCornerWQRadius:(WQRadius)radius borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor;

@end
