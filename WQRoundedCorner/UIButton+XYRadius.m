
#import "UIButton+XYRadius.h"
#import <SDWebImage/SDWebImageManager.h>

@implementation UIButton (XYRadius)

- (void)xySetCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size forState:(UIControlState)state {
    [self xySetCornerXYRadius:XYRadiusMake(radius, radius, radius, radius) imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:UIViewContentModeScaleAspectFill size:size forState:(UIControlState)state];
}

- (void)xySetCornerXYRadius:(XYRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size forState:(UIControlState)state {
    [self xySetCornerXYRadius:radius imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:UIViewContentModeScaleAspectFill size:size forState:(UIControlState)state];
}

- (void)xySetCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size forState:(UIControlState)state {
    [self xySetCornerXYRadius:XYRadiusMake(radius, radius, radius, radius) imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:contentMode size:size forState:(UIControlState)state];
}

- (void)xySetCornerXYRadius:(XYRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size forState:(UIControlState)state {
    [self xySetCornerXYRadius:radius imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:contentMode size:size forState:(UIControlState)state];
}

- (void)xySetCornerXYRadius:(XYRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor contentMode:(UIViewContentMode)contentMode size:(CGSize)size forState:(UIControlState)state {

    [[SDWebImageDownloader sharedDownloader] downloadImageWithURL:imageURL options:SDWebImageDownloaderLowPriority progress:NULL completed:^(UIImage *image, NSData *data, NSError *error, BOOL finished) {
        if (!image) {
            image = placeholder;
        }
        UIImage *rediusImage = [UIImage xySetXYRadius:radius image:image size:size borderColor:borderColor borderWidth:borderWidth backgroundColor:backgroundColor withContentMode:contentMode];
        [self setImage:rediusImage forState:state];
    }];
}

@end
