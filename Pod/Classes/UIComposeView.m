//
//  UIComposeView.m
//  Pods
//
//  Created by Mike Chen on 9/22/15.
//
//

#import "UIComposeView.h"
#import <PureLayout/PureLayout.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface UIComposeView ()
{
    UIImageView* _imageViewLeft;
    UIImageView* _imageViewRight;
}
@end

@implementation UIComposeView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageViewLeft = [UIImageView newAutoLayoutView];
        [self addSubview:_imageViewLeft];
        [_imageViewLeft autoSetDimensionsToSize:CGSizeMake(100, 100)];
        [_imageViewLeft autoPinEdgeToSuperviewEdge:ALEdgeLeft];
        [_imageViewLeft autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
        [_imageViewLeft sd_setImageWithURL:[NSURL URLWithString:@"http://b.hiphotos.baidu.com/image/pic/item/faf2b2119313b07e73cdc2690ad7912397dd8c5b.jpg"] placeholderImage:nil];
 
        
        _imageViewRight = [UIImageView newAutoLayoutView];
        [self addSubview:_imageViewRight];
        [_imageViewRight autoSetDimensionsToSize:CGSizeMake(100, 100)];
        [_imageViewRight autoPinEdgeToSuperviewEdge:ALEdgeRight];
        [_imageViewRight autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
        [_imageViewRight sd_setImageWithURL:[NSURL URLWithString:@"http://e.hiphotos.baidu.com/image/pic/item/72f082025aafa40f0ff85cbcad64034f78f01990.jpg"] placeholderImage:nil];
        
        return self;
    }
    return nil;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
