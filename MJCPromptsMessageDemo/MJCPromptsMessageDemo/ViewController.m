//
//  ViewController.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/16.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "ViewController.h"
#import "MJCPromptsMessage.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (IBAction)successOne:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenSuccess];
    
}

- (IBAction)successTwo:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenSuccess:@"啦啦啦啦"];
    
}

- (IBAction)successThree:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenSuccess:@"加载成功,偶也" messageStyle:MJCPromptsTypeWhite];
    
}

- (IBAction)errorOne:(id)sender {
}

- (IBAction)errorTwo:(id)sender {
}


- (IBAction)errorThree:(id)sender {
}

- (IBAction)loadingOne:(id)sender {
}

- (IBAction)loadingTwo:(id)sender {
}


- (IBAction)loadingThree:(id)sender {
}


- (IBAction)msgAutoHiddenClick:(id)sender {
}


- (IBAction)msgClick:(id)sender {
}


- (IBAction)hiddenClick:(id)sender {
}


@end
