//
//  ViewController.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/16.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "ViewController.h"
#import "MJCPromptsMessage.h"
#import "MJCErrorVC.h"
#import "MJCLoadingVC.h"
#import "MJCSuccessVC.h"
#import "MJCCustomVC.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)successOne:(id)sender {
    
    MJCSuccessVC *VC1 = [MJCSuccessVC new];
    
    
    [self.navigationController pushViewController:VC1 animated:YES];
    
}


- (IBAction)errorOne:(id)sender {
    
    MJCErrorVC *VC1 = [MJCErrorVC new];
    
    
    [self.navigationController pushViewController:VC1 animated:YES];
    
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
