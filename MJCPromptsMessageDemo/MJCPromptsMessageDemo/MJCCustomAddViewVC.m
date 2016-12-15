//
//  MJCCustomAddViewVC.m
//  MJCPackageMessageDemo
//
//  Created by mjc on 16/12/15.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCCustomAddViewVC.h"
#import "MJCPackageMessage.h"

@interface MJCCustomAddViewVC ()

@end

@implementation MJCCustomAddViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)one:(id)sender
{
    [MJCPackageMessage showsCustomMessage:@"可传图片和文字颜色" image:[UIImage imageNamed:@"LOL2"] msgHidden:YES];
    [MJCPackageMessage revisesMessageTextColor:[UIColor grayColor]];
    [MJCPackageMessage revisesMessageColor:[UIColor redColor]];
    [MJCPackageMessage revisesCustomTextFont:12];
    [MJCPackageMessage revisesMessageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200)];
    [MJCPackageMessage revisesCustomTextFrame:CGRectMake(20,20,50,100)];
    [MJCPackageMessage revisesCustomImageViewFrame:CGRectMake(120, 0,50,100)];
}

- (IBAction)two:(id)sender {
    
    
    [MJCPackageMessage showsCustomMessage:@"可传图片和文字颜色" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] msgHidden:YES starFrame:200 imageFrame:CGRectMake(20,20,50,100) lableFrame:CGRectMake(120, 0,50,100) messageFrame:CGRectMake(10,100,MJCScreenWidth - 20, 200) textFont:14];
    
}

- (IBAction)three:(id)sender{
    
    
    [MJCPackageMessage showsCustomMessage:@"可传图片和文字颜色" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] msgHidden:YES textFont:12];
    
    [MJCPackageMessage revisesMessageFrame:CGRectMake(0,64,[UIScreen mainScreen].bounds.size.width,100)];
    
}


- (IBAction)four:(id)sender {

    
    [MJCPackageMessage showsCustomMessage:@"自定义图片位置和文字位置,还有MJCPackageMessage大小位置" image:[UIImage imageNamed:@"LOL2"] textColor:[UIColor purpleColor] starFrame:120 msgHidden:YES textFont:20];
    
}

- (IBAction)five:(id)sender {
    
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor redColor];
    view1.frame = CGRectMake(0, 0, 320, 50);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor purpleColor];
    [button addTarget:self action:@selector(dissmesss:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(40, 0, 100, 20);
    [view1 addSubview:button];
    
    UILabel *lasdsa = [[UILabel alloc]init];
    lasdsa.text = @"asdsadsadas";
    lasdsa.textColor = [UIColor whiteColor];
    lasdsa.backgroundColor = [UIColor blackColor];
    lasdsa.frame = CGRectMake(0, 0, 50, 20);
    [button addSubview:lasdsa];
    
    [MJCPackageMessage messageStarFrame:100 addCusttomSubview:view1];
    
    //修改位置大小
    [MJCPackageMessage revisesMessageCustomFrame:CGRectMake(0, 200,self.view.mjc_width, 100)];
    
}

- (IBAction)dissmesss:(id)sender
{
    [MJCPackageMessage hideDismiss];
}




@end
