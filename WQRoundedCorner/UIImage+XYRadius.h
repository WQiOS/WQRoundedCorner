
//生成带圆角的图片
#import <UIKit/UIKit.h>

struct XYRadius {
    CGFloat topLeftRadius;
    CGFloat topRightRadius;
    CGFloat bottomLeftRadius;
    CGFloat bottomRightRadius;
};
typedef struct XYRadius XYRadius;

static inline XYRadius XYRadiusMake(CGFloat topLeftRadius, CGFloat topRightRadius, CGFloat bottomLeftRadius, CGFloat bottomRightRadius) {
    XYRadius radius;
    radius.topLeftRadius = topLeftRadius;
    radius.topRightRadius = topRightRadius;
    radius.bottomLeftRadius = bottomLeftRadius;
    radius.bottomRightRadius = bottomRightRadius;
    return radius;
}

static inline NSString * NSStringFromXYRadius(XYRadius radius) {
    return [NSString stringWithFormat:@"{%.2f, %.2f, %.2f, %.2f}", radius.topLeftRadius, radius.topRightRadius, radius.bottomLeftRadius, radius.bottomRightRadius];
}

@interface UIImage (RoundedCorner)

- (UIImage *)xySetRadius:(CGFloat)radius
                     size:(CGSize)size;

- (UIImage *)xySetRadius:(CGFloat)radius
                     size:(CGSize)size
              contentMode:(UIViewContentMode)contentMode;

+ (UIImage *)xySetRadius:(CGFloat)radius
                     size:(CGSize)size
              borderColor:(UIColor *)borderColor
              borderWidth:(CGFloat)borderWidth
          backgroundColor:(UIColor *)backgroundColor;

+ (UIImage *)xySetXYRadius:(XYRadius)radius
                      image:(UIImage *)image
                       size:(CGSize)size
                borderColor:(UIColor *)borderColor
                borderWidth:(CGFloat)borderWidth
            backgroundColor:(UIColor *)backgroundColor
            withContentMode:(UIViewContentMode)contentMode;

@end
