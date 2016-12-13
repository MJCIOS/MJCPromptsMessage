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
//    
    [MJCPromptsMessage showLoading];
//    [MJCPromptsMessage reviseMessageTextColor:[UIColor grayColor]];
    [MJCPromptsMessage reviseMessageColor:[UIColor redColor]];
    [MJCPromptsMessage reviseLoadingFrame:CGRectMake(10,64,MJCScreenWidth - 20, 100)];
    [MJCPromptsMessage reviseCustomTextFont:12];
    

//    [MJCPromptsMessage showLoading:@"正在高考中" backColor:[UIColor redColor] loadingFrame:CGRectMake(10,64,MJCScreenWidth - 20, 100)];
//    [MJCPromptsMessage reviseMessageTextColor:[UIColor purpleColor]];
//    [MJCPromptsMessage reviseCustomTextFont:20];
    
    
}
- (IBAction)two2:(id)sender {
    
    [MJCPromptsMessage showLoading:@"正在高考中"];
    
}

- (IBAction)four2:(id)sender {
    
    [MJCPromptsMessage showLoading:@"高考成功,祝贺我,偶也" backColor:[UIColor redColor]];
    
}
- (IBAction)yincang2:(id)sender {
    
    [MJCPromptsMessage hideDismiss];
}




@end
