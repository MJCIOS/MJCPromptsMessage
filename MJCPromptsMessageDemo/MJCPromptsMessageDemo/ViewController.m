//
//  ViewController.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/16.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "ViewController.h"
#import "MJCPackageMessage.h"

#import "MJCLoadingVC.h"
#import "MJCMessageVC.h"

#import "MJCCustomAddViewVC.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)loadingOne:(id)sender {
    
    MJCLoadingVC *VC1 = [MJCLoadingVC new];
    
    [self.navigationController pushViewController:VC1 animated:YES];
    
}



- (IBAction)msgAutoHiddenClick:(id)sender {
    
    MJCMessageVC *VC1 = [MJCMessageVC new];
    
    [self.navigationController pushViewController:VC1 animated:YES];    
    
}


- (IBAction)custumeclick:(id)sender {
    
    MJCCustomAddViewVC *VC1 = [MJCCustomAddViewVC new];
    
    
    [self.navigationController pushViewController:VC1 animated:YES];
    
}






@end
