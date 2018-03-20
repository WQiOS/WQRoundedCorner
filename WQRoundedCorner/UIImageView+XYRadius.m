
#import "UIImageView+XYRadius.h"
//#if __has_include(<YYWebImage/UIImageView+YYWebImage.h>)
//#import <YYWebImage/UIImageView+YYWebImage.h>
//#else
//#import "UIImageView+YYWebImage.h"
//#endif

#import <SDWebImage/SDWebImageManager.h>

@implementation UIImageView (XYRadius)

- (void)xySetCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size {
    [self xySetCornerXYRadius:XYRadiusMake(radius, radius, radius, radius) imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:UIViewContentModeScaleAspectFill size:size];
}

- (void)xySetCornerXYRadius:(XYRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size {
    [self xySetCornerXYRadius:radius imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:UIViewContentModeScaleAspectFill size:size];
}

- (void)xySetCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size {
    [self xySetCornerXYRadius:XYRadiusMake(radius, radius, radius, radius) imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:contentMode size:size];
}

- (void)xySetCornerXYRadius:(XYRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size {
    [self xySetCornerXYRadius:radius imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:contentMode size:size];
}

- (void)xySetCornerXYRadius:(XYRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor contentMode:(UIViewContentMode)contentMode size:(CGSize)size {
    [[SDWebImageDownloader sharedDownloader] downloadImageWithURL:imageURL options:SDWebImageDownloaderLowPriority progress:NULL completed:^(UIImage *image, NSData *data, NSError *error, BOOL finished) {
        if (!image) {
            image = placeholder;
        }
        UIImage *rediusImage = [UIImage xySetXYRadius:radius image:image size:size borderColor:borderColor borderWidth:borderWidth backgroundColor:backgroundColor withContentMode:contentMode];
        self.image = rediusImage;
    }];
}

@end
