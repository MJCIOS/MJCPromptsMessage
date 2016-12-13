//
//  MJCCustomVC.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/17.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCCustomVC.h"
#import "MJCPromptsMessage.h"

@interface MJCCustomVC ()

@end

@implementation MJCCustomVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)one4:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenMessage:@"暂无最新数据"];//传普通信息
//    [MJCPromptsMessage reviseMessageTextColor:[UIColor grayColor]];
//    [MJCPromptsMessage reviseMessageColor:[UIColor redColor]];
//    [MJCPromptsMessage reviseCustomTextFont:12];
//    [MJCPromptsMessage reviseMessageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200)];
    
}

- (IBAction)two4:(id)sender {

    [MJCPromptsMessage showMessage:@"最新加载20条数据" msgHidden:NO];//传普通信息,可自设置是否隐藏
    [MJCPromptsMessage reviseMessageTextColor:[UIColor grayColor]];
    [MJCPromptsMessage reviseMessageColor:[UIColor redColor]];
    [MJCPromptsMessage reviseCustomTextFont:12];
    [MJCPromptsMessage reviseMessageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200)];
    
}

- (IBAction)three1:(id)sender { //传信息和图片.是否隐藏
    
    [MJCPromptsMessage showAutoHiddenMessage:@"可自定义背景色和文字颜色和图片" image:[UIImage imageNamed:@"successwhite"]];
    [MJCPromptsMessage reviseMessageTextColor:[UIColor grayColor]];
    [MJCPromptsMessage reviseMessageColor:[UIColor redColor]];
    [MJCPromptsMessage reviseCustomTextFont:12];
    [MJCPromptsMessage reviseMessageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200)];
}

- (IBAction)three2:(id)sender {//传信息和图片,自动隐藏
    [MJCPromptsMessage showMessage:@"可传背景色和文字颜色和图片" backColor:[UIColor redColor] textColor:[UIColor purpleColor] image:[UIImage imageNamed:@"successwhite"] msgHidden:NO];
    [MJCPromptsMessage reviseMessageTextColor:[UIColor grayColor]];
    [MJCPromptsMessage reviseMessageColor:[UIColor redColor]];
    [MJCPromptsMessage reviseCustomTextFont:12];
    [MJCPromptsMessage reviseMessageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200)];
}

- (IBAction)three3:(id)sender
{
    
    [MJCPromptsMessage showCustomMessage:@"可传图片和文字颜色" image:[UIImage imageNamed:@"LOL2"] msgHidden:YES];
    [MJCPromptsMessage reviseMessageTextColor:[UIColor grayColor]];
    [MJCPromptsMessage reviseMessageColor:[UIColor redColor]];
    [MJCPromptsMessage reviseCustomTextFont:12];
    [MJCPromptsMessage reviseMessageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200)];
    [MJCPromptsMessage reviseCustomTextFrame:CGRectMake(20,20,50,100)];
    [MJCPromptsMessage reviseCustomImageViewFrame:CGRectMake(120, 0,50,100)];

}

- (IBAction)three4:(id)sender {
    

    [MJCPromptsMessage showCustomMessage:@"可传图片和文字颜色" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] msgHidden:YES starFrame:200 imageFrame:CGRectMake(20,20,50,100) lableFrame:CGRectMake(120, 0,50,100) messageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200) textFont:14];

}

- (IBAction)three5:(id)sender{
    
    
    [MJCPromptsMessage showCustomMessage:@"可传图片和文字颜色" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] msgHidden:YES textFont:12];
    
    [MJCPromptsMessage reviseMessageFrame:CGRectMake(0,64,[UIScreen mainScreen].bounds.size.width,100)];
    
}

- (IBAction)three6:(id)sender {
    
//    [MJCPromptsMessage showCustomMessage:@"自定义图片位置和文字位置,还有MJCPromptsMessage大小位置" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] msgHidden:NO imageFrame:CGRectMake(10, 0, 50, 50) lableFrame:CGRectMake(110, 0, 100, 100)];
    
//    [MJCPromptsMessage showMessageCustomFrame:CGRectMake(0,64, [UIScreen mainScreen].bounds.size.width,100)];

    [MJCPromptsMessage showCustomMessage:@"自定义图片位置和文字位置,还有MJCPromptsMessage大小位置" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] starFrame:120 msgHidden:YES textFont:20];

}



- (IBAction)customButton1:(id)sender {
    
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor redColor];
    view1.frame = CGRectMake(0, 0, 320, 50);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor purpleColor];
    [button addTarget:self action:@selector(disss) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(40, 0, 100, 20);
    [view1 addSubview:button];
    
    UILabel *lasdsa = [[UILabel alloc]init];
    lasdsa.text = @"asdsadsadas";
    lasdsa.textColor = [UIColor whiteColor];
    lasdsa.backgroundColor = [UIColor blackColor];
    lasdsa.frame = CGRectMake(0, 0, 50, 20);
    [button addSubview:lasdsa];
    
    [MJCPromptsMessage windowAddSubview:100 addControls:view1];
    
    //修改位置大小
    [MJCPromptsMessage reviseMessageCustomFrame:CGRectMake(0, 200,self.view.mjc_width, 100)];
    
    
}

-(void)disss
{
    [MJCPromptsMessage hideDismiss];
}





@end
