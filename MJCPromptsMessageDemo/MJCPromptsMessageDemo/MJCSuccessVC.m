//
//  MJCSuccessVC.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/17.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCSuccessVC.h"
#import "MJCPromptsMessage.h"

@interface MJCSuccessVC ()

@end

@implementation MJCSuccessVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (IBAction)one:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenSuccess];//加载成功

}
- (IBAction)two:(id)sender {

    [MJCPromptsMessage showAutoHiddenSuccess:@"求婚,成功了"];//可传文字参数

}
- (IBAction)three:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenSuccess:@"求婚,成功了,偶也" messageStyle:MJCPromptsTypeWhite];

}


- (IBAction)four:(id)sender {

    [MJCPromptsMessage showAutoHiddenSuccess:@"求婚,成功了,红红火火,红红火火,红红火火" backColor:[UIColor redColor] successImage:[UIImage imageNamed:@"infoblack@2x"]];

}
- (IBAction)yincang:(id)sender {
    
    [MJCPromptsMessage hideDismiss];
}

@end
