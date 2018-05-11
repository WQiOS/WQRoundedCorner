
/**
 本库的主要用途：UIImage生成带圆角的图片
 */

#import <UIKit/UIKit.h>

struct WQRadius {
    CGFloat topLeftRadius;
    CGFloat topRightRadius;
    CGFloat bottomLeftRadius;
    CGFloat bottomRightRadius;
};

typedef struct WQRadius WQRadius;

static inline WQRadius WQRadiusMake(CGFloat topLeftRadius, CGFloat topRightRadius, CGFloat bottomLeftRadius, CGFloat bottomRightRadius) {
    WQRadius radius;
    radius.topLeftRadius = topLeftRadius;
    radius.topRightRadius = topRightRadius;
    radius.bottomLeftRadius = bottomLeftRadius;
    radius.bottomRightRadius = bottomRightRadius;
    return radius;
}

static inline NSString * NSStringFromWQRadius(WQRadius radius) {
    return [NSString stringWithFormat:@"{%.2f, %.2f, %.2f, %.2f}", radius.topLeftRadius, radius.topRightRadius, radius.bottomLeftRadius, radius.bottomRightRadius];
}

@interface UIImage (RoundedCorner)

- (UIImage *)wqSetRadius:(CGFloat)radius size:(CGSize)size;

- (UIImage *)wqSetRadius:(CGFloat)radius size:(CGSize)size contentMode:(UIViewContentMode)contentMode;

+ (UIImage *)wqSetRadius:(CGFloat)radius size:(CGSize)size borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor;

+ (UIImage *)wqSetWQRadius:(WQRadius)radius image:(UIImage *)image size:(CGSize)size borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor withContentMode:(UIViewContentMode)contentMode;

@end
