//
//  MJCCustomVC.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/17.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCCustomVC.h"
#import "MJCPromptsMessage.h"

@interface MJCCustomVC ()

@end

@implementation MJCCustomVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)one4:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenMessage:@"暂无最新数据"];//传普通信息
}

- (IBAction)two4:(id)sender {

    [MJCPromptsMessage showMessage:@"最新加载20条数据" msgHidden:NO];//传普通信息,可自设置是否隐藏
    
}

- (IBAction)three1:(id)sender { //传信息和图片.是否隐藏
    
    [MJCPromptsMessage showMessage:@"成功加载到最新多少条数据呢" image:[UIImage imageNamed:@"successwhite"] msgHidden:NO];
}

- (IBAction)three2:(id)sender {//传信息和图片,自动隐藏
    
    [MJCPromptsMessage showAutoHiddenMessage:@"可自定义背景色和文字颜色和图片" image:[UIImage imageNamed:@"successwhite"]];
}

- (IBAction)three3:(id)sender {
    
    [MJCPromptsMessage showMessage:@"可传背景色和文字颜色和图片" backColor:[UIColor redColor] textColor:[UIColor purpleColor] image:[UIImage imageNamed:@"successwhite"] msgHidden:NO];
    
}

- (IBAction)three4:(id)sender {
    
    [MJCPromptsMessage showMessage:@"可传图片和文字颜色和样式" image:[UIImage imageNamed:@"successwhite"] autoHidden:YES messageStyle:MJCPromptsMessagesblack];
    //可设置位置尺寸大小
    [MJCPromptsMessage showMessageFrame:CGRectMake(0,64, [UIScreen mainScreen].bounds.size.width,100)];

}

- (IBAction)three5:(id)sender{
    
    [MJCPromptsMessage showCustomMessage:@"可传图片和文字颜色" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] msgHidden:YES];
    
    [MJCPromptsMessage showMessageFrame:CGRectMake(0,64,[UIScreen mainScreen].bounds.size.width,100)];
    
}

- (IBAction)three6:(id)sender {
    
    [MJCPromptsMessage showCustomMessage:@"自定义图片位置和文字位置,还有MJCPromptsMessage大小位置" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] msgHidden:NO imageFrame:CGRectMake(10, 0, 50, 50) lableFrame:CGRectMake(110, 0, 100, 100)];
    
    [MJCPromptsMessage showMessageCustomFrame:CGRectMake(0,64, [UIScreen mainScreen].bounds.size.width,100)];
}








@end