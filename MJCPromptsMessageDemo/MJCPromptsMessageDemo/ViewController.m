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
    
    
//    UIView *view1 = [[UIView alloc]init];
//    
//    view1.backgroundColor = [UIColor purpleColor];
//    
//    view1.frame = CGRectMake(0, 64, self.view.mjc_width,60);
//    
//    [self.view addSubview:view1];
//    
//    
//    // 添加旋转器
//    UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.image = [UIImage imageNamed:@"LOL0"];
//    imageView.mjc_width = 20;
//    imageView.mjc_height = imageView.mjc_width;
//    imageView.mjc_x = 10;
//    //Y值中心点,等于窗口的高度的一半那个位置
//    CGFloat centerY = view1.mjc_height * 0.5;
//    imageView.mjc_centerY = centerY;
//    [view1 addSubview:imageView];
//
//    
//    
//    // 创建lable
//    UILabel *label = [[UILabel alloc] init];
//    label.backgroundColor = [UIColor redColor];
//    label.font = [UIFont systemFontOfSize:12];
//    label.textAlignment = NSTextAlignmentLeft;//文字向左对齐
//    label.numberOfLines = 0;//行数
//    label.mjc_x =(imageView.mjc_width + 10)+10;
//    label.mjc_y = 0;
//    label.mjc_width = view1.mjc_width - (imageView.mjc_width + 10+10+10);
//    label.mjc_height = view1.mjc_height;
//    
//    label.userInteractionEnabled = YES;
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideDismiss)];
//    [label addGestureRecognizer:tapGesture];
//    label.text = @"阿萨德撒的撒打算打萨达aaaa打算打打算打打算打打算打打算打打算打a打打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打算打a打打算打a打打算打a";
//    
//    [view1 addSubview:label];

    

    
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
