//
//  MJCLoadingVC.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/17.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCLoadingVC.h"
#import "MJCPackageMessage.h"

@interface MJCLoadingVC ()

@end

@implementation MJCLoadingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)one2:(id)sender {
    
    [MJCPackageMessage isHiddenEndShowAnimal:YES];
    [MJCPackageMessage showsLoading:@"正在高考中"];
    [MJCPackageMessage revisesLoadingFrame:CGRectMake(0,64,MJCScreenWidth,50)];
    
}
- (IBAction)two2:(id)sender {
    
    [MJCPackageMessage showsLoading];
    [MJCPackageMessage revisesMessageTextColor:[UIColor grayColor]];
    [MJCPackageMessage revisesMessageColor:[UIColor redColor]];
    [MJCPackageMessage revisesLoadingFrame:CGRectMake(10,64,MJCScreenWidth - 20, 100)];
    [MJCPackageMessage revisesLoadingTextFont:12];
    [MJCPackageMessage revisesPromptedLayer:15];

}

- (IBAction)four2:(id)sender {
    
    [MJCPackageMessage isHiddenEndShowAnimal:YES];
    [MJCPackageMessage showsLoading:@"正在高考中......"backColor:[[UIColor blackColor]colorWithAlphaComponent:0.5] loadingFrame:CGRectMake(30, 200,MJCScreenWidth - 60, 200)];
    
}
- (IBAction)yincang2:(id)sender {
    
    [MJCPackageMessage hideDismiss];
}




@end
