//
//  UMLabel.m
//  VideoSDK
//
//  Created by linxiaolong on 16/6/17.
//  Copyright © 2016年 HuaiNan. All rights reserved.
//

#import "UMLabel.h"
@interface NSString (UMLabel)
/**
 *返回值是该字符串所占的大小(width, height)
 *font : 该字符串所用的字体(字体大小不一样,显示出来的面积也不同)
 *maxSize : 为限制改字体的最大宽和高(如果显示一行,则宽高都设置为MAXFLOAT, 如果显示为多行,只需将宽设置一个有限定长值,高设置为MAXFLOAT)
 */
-(CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;
@end
@implementation NSString (UMLabel)
//返回字符串所占用的尺寸.
-(CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    
    CGRect rect = CGRectZero;
    if ([[[UIDevice currentDevice] systemVersion] intValue] >= 7) {
        rect = [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil];
    }else{
        NSAttributedString *attributeString = [[[NSAttributedString alloc] initWithString:self attributes:attrs] autorelease];
        rect = [attributeString boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    }
    
    return rect.size;
}
@end

@implementation UMLabel
-(id)initWithFrame:(CGRect)frame textcolor:(UIColor *)color font:(UIFont*)font text:(NSString *)text{
    self = [super initWithFrame:frame];
    if (self) {
        self.maxWidth = MAXFLOAT;
        //        self.backgroundColor = [UIColor redColor];
        self.textColor = color;
        self.font = font;
        self.text = text;
        self.textAlignment = NSTextAlignmentLeft;
        self.layer.masksToBounds = NO;
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)resetFrame{
    
    CGRect rect = self.frame;
    float textWidth = [self.text sizeWithFont:self.font maxSize:CGSizeMake(self.maxWidth, MAXFLOAT)].width;
    rect.size.width = textWidth;
    self.frame = rect;
}
@end
