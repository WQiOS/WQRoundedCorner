
#import "UIImageView+WQRadius.h"
#import <SDWebImage/SDWebImageManager.h>

@implementation UIImageView (WQRadius)

- (void)setCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size {
    [self setCornerWQRadius:WQRadiusMake(radius, radius, radius, radius) imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:UIViewContentModeScaleAspectFill size:size];
}

- (void)setCornerWQRadius:(WQRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size {
    [self setCornerWQRadius:radius imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:UIViewContentModeScaleAspectFill size:size];
}

- (void)setCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size {
    [self setCornerWQRadius:WQRadiusMake(radius, radius, radius, radius) imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:contentMode size:size];
}

- (void)setCornerWQRadius:(WQRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size {
    [self setCornerWQRadius:radius imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:contentMode size:size];
}

- (void)setCornerWQRadius:(WQRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor contentMode:(UIViewContentMode)contentMode size:(CGSize)size {
    [[SDWebImageDownloader sharedDownloader] downloadImageWithURL:imageURL options:SDWebImageDownloaderLowPriority progress:NULL completed:^(UIImage *image, NSData *data, NSError *error, BOOL finished) {
        if (!image) {
            image = placeholder;
        }
        UIImage *rediusImage = [UIImage setWQRadius:radius image:image size:size borderColor:borderColor borderWidth:borderWidth backgroundColor:backgroundColor withContentMode:contentMode];
        self.image = rediusImage;
    }];
}

@end
