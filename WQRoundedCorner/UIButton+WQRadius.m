
#import "UIButton+WQRadius.h"
#import <SDWebImage/SDWebImageManager.h>

@implementation UIButton (WQRadius)

- (void)wqSetCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size forState:(UIControlState)state {
    [self wqSetCornerWQRadius:WQRadiusMake(radius, radius, radius, radius) imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:UIViewContentModeScaleAspectFill size:size forState:(UIControlState)state];
}

- (void)wqSetCornerWQRadius:(WQRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder size:(CGSize)size forState:(UIControlState)state {
    [self wqSetCornerWQRadius:radius imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:UIViewContentModeScaleAspectFill size:size forState:(UIControlState)state];
}

- (void)wqSetCornerRadius:(CGFloat)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size forState:(UIControlState)state {
    [self wqSetCornerWQRadius:WQRadiusMake(radius, radius, radius, radius) imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:contentMode size:size forState:(UIControlState)state];
}

- (void)wqSetCornerWQRadius:(WQRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder contentMode:(UIViewContentMode)contentMode size:(CGSize)size forState:(UIControlState)state {
    [self wqSetCornerWQRadius:radius imageURL:imageURL placeholder:placeholder borderColor:nil borderWidth:0 backgroundColor:nil contentMode:contentMode size:size forState:(UIControlState)state];
}

- (void)wqSetCornerWQRadius:(WQRadius)radius imageURL:(NSURL *)imageURL placeholder:(UIImage *)placeholder borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth backgroundColor:(UIColor *)backgroundColor contentMode:(UIViewContentMode)contentMode size:(CGSize)size forState:(UIControlState)state {
    NSString * urlStr = [imageURL absoluteString];
    BOOL hasHttp = [urlStr containsString:@"http"] || [urlStr containsString:@"https"];
    BOOL hasJPG = [urlStr containsString:@"jpg"] || [urlStr containsString:@"png"] || [urlStr containsString:@"gif"] || [urlStr containsString:@"jpeg"] || [urlStr containsString:@"tiff"];
    //判断是否是网络图片
    if (hasHttp && hasJPG) {
        [SDWebImageManager.sharedManager loadImageWithURL:imageURL options:SDWebImageRetryFailed progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        } completed:^(UIImage * _Nullable image, NSData * _Nullable data, NSError * _Nullable error, SDImageCacheType cacheType, BOOL finished, NSURL * _Nullable imageURL) {
            if (!image) {
                image = placeholder;
            }
            UIImage *rediusImage = [UIImage wqSetWQRadius:radius image:image size:size borderColor:borderColor borderWidth:borderWidth backgroundColor:backgroundColor withContentMode:contentMode];
            dispatch_async(dispatch_get_main_queue(), ^{
                [self setImage:rediusImage forState:state];
            });
        }];
    }else if(placeholder){
        //先确认是无法下载的图片后，直接显示占位图
        UIImage *rediusImage = [UIImage wqSetWQRadius:radius image:placeholder size:size borderColor:borderColor borderWidth:borderWidth backgroundColor:backgroundColor withContentMode:contentMode];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self setImage:rediusImage forState:state];
        });
    }else{
        NSLog(@"圆角图片的处理存在异常");
    }
}

@end
