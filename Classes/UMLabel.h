//
//  UMLabel.h
//  VideoSDK
//
//  Created by linxiaolong on 16/6/17.
//  Copyright © 2016年 HuaiNan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UMLabel : UILabel
@property (nonatomic,assign)float maxWidth;
-(id)initWithFrame:(CGRect)frame textcolor:(UIColor *)color font:(UIFont*)font text:(NSString *)text;
-(void)resetFrame;
@end
