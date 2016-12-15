//
//  MJCCustomVC.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/17.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCMessageVC.h"
#import "MJCPackageMessage.h"

@interface MJCMessageVC ()

@end

@implementation MJCMessageVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)one4:(id)sender {
    
    [MJCPackageMessage isHiddenEndShowAnimal:YES];
    [MJCPackageMessage showsAutoHiddenMessage:@"暂无最新数据"];//传普通信息
    
//    [MJCPackageMessage revisesMessageTextColor:[UIColor grayColor]];
//    [MJCPackageMessage revisesMessageColor:[UIColor redColor]];
//    [MJCPackageMessage revisesCustomTextFont:12];
//    [MJCPackageMessage revisesMessageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200)];
    
}

- (IBAction)two4:(id)sender {

    [MJCPackageMessage isHiddenEndShowAnimal:NO];
    [MJCPackageMessage showsMessage:@"最新加载20条数据" msgHidden:NO];//传普通信息,可自设置是否隐藏
    [MJCPackageMessage revisesMessageTextColor:[UIColor grayColor]];
    [MJCPackageMessage revisesMessageColor:[UIColor redColor]];
    [MJCPackageMessage revisesCustomTextFont:12];
    [MJCPackageMessage revisesMessageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200)];
    
}

- (IBAction)three1:(id)sender { //传信息和图片.是否隐藏
    
    [MJCPackageMessage showsMessage:@"可自定义背景色和文字颜色和图片" image:[UIImage imageNamed:@"successwhite"] msgHidden:YES];
    [MJCPackageMessage revisesMessageTextColor:[UIColor grayColor]];
    [MJCPackageMessage revisesMessageColor:[UIColor redColor]];
    [MJCPackageMessage revisesCustomTextFont:12];
    [MJCPackageMessage revisesMessageFrame:CGRectMake(10,100,MJCScreenWidth, 200)];
}

- (IBAction)three2:(id)sender {//传信息和图片,自动隐藏
    [MJCPackageMessage showsMessage:@"可传背景色和文字颜色和图片" backColor:[UIColor redColor] textColor:[UIColor purpleColor] image:[UIImage imageNamed:@"successwhite"] msgHidden:NO];
    [MJCPackageMessage revisesMessageTextColor:[UIColor grayColor]];
    [MJCPackageMessage revisesMessageColor:[UIColor redColor]];
    [MJCPackageMessage revisesCustomTextFont:12];
    [MJCPackageMessage revisesMessageFrame:CGRectMake(10,100,MJCScreenWidth, 100)];
}








@end
