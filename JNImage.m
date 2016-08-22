- (UIImage *)scaleAspectImage:(UIImage *)image ToSize:(CGSize)targetSize
{
    CGSize originSize = CGSizeMake([image size].width * image.scale, [image size].height * image.scale); //使用像素，而不是点
    CGFloat scale = MAX(targetSize.width / originSize.width, targetSize.height / originSize.height);
    CGSize expectSize = CGSizeMake(targetSize.width / scale, targetSize.height / scale);
    
    CGRect originRect = CGRectMake(0, 0, expectSize.width, expectSize.height);
    if ((originSize.width - expectSize.width) > CGFLOAT_MIN) {
        originRect.origin.x = (originSize.width - expectSize.width) / 2;
    }
    if ((originSize.height - expectSize.height) > CGFLOAT_MIN) {
        originRect.origin.y =  (originSize.height - expectSize.height) / 2;
    }
    
    CGImageRef imageRef = CGImageCreateWithImageInRect([image CGImage], originRect);
    UIImage *scaledImage = [UIImage imageWithCGImage:imageRef];
    
    return scaledImage;
}

