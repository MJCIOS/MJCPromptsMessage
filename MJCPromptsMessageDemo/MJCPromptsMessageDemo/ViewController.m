//
//  ViewController.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/16.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "ViewController.h"
#import "MJCPromptsMessage.h"

#import "MJCLoadingVC.h"

#import "MJCCustomVC.h"

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
    
    
    MJCCustomVC *VC1 = [MJCCustomVC new];
    
    
    [self.navigationController pushViewController:VC1 animated:YES];    
    
}






@end
