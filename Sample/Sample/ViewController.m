//
//  ViewController.m
//  Sample
//
//  Created by linxiaolong on 2016/12/6.
//  Copyright © 2016年 wengxianxun. All rights reserved.
//

#import "ViewController.h"
#import "UMVideoAd.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UMVideoAd initAppID:@"" appKey:@"" cacheVideo:YES];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
