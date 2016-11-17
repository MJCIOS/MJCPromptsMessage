//
//  MJCLoadingVC.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/17.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCLoadingVC.h"
#import "MJCPromptsMessage.h"

@interface MJCLoadingVC ()

@end

@implementation MJCLoadingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)one2:(id)sender {
    
    [MJCPromptsMessage showLoading];//正在加载
    
}
- (IBAction)two2:(id)sender {
    
    [MJCPromptsMessage showLoading:@"正在高考中"];
    
}
- (IBAction)three2:(id)sender {
    
    [MJCPromptsMessage showLoading:@"正在高考学习中,祝贺我,偶也" messageStyle:MJCPromptsTypeWhite];
}

- (IBAction)four2:(id)sender {
    
    [MJCPromptsMessage showLoading:@"高考成功,祝贺我,偶也" backColor:[UIColor redColor]];
    
}
- (IBAction)yincang2:(id)sender {
    
    [MJCPromptsMessage hideDismiss];
}




@end
