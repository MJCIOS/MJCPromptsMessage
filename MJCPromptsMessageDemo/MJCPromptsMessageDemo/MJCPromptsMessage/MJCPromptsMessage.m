//
//  MJCUpDataAdvertisView.m
//  MJCUpDateAdvertisView
//
//  Created by mjc on 16/11/15.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCPromptsMessage.h"
#import "MJCPromptsView.h"

@interface MJCPromptsMessage ()



@end

static int imageInter;


@implementation MJCPromptsMessage


+(void)showPromptsMessageStyle:(MJCPromptsMessageStyle)MJCPromptsMessageStyle
{
    if (MJCPromptsMessageStyle == MJCPromptsMessageblack) {
        [MJCPromptsView showMessageColor:[[UIColor blackColor]colorWithAlphaComponent:0.5]];
        [MJCPromptsView showMessageTextColor:[UIColor whiteColor]];
        [self setupshowMessageImage:@"successwhite" errorImage:@"errorwhite@2x 2"];
    }else{
        [MJCPromptsView showMessageColor:[[UIColor whiteColor]colorWithAlphaComponent:0.5]];
        [MJCPromptsView showMessageTextColor:[UIColor blackColor]];
        [self setupshowMessageImage:@"success" errorImage:@"error"];
    }
}

+(void)showPromptsMessagesStyle:(MJCPromptsMessagesStyle)MJCPromptsMessagesStyle;
{
    if (MJCPromptsMessagesStyle == MJCPromptsMessagesblack) {
        [MJCPromptsView showMessageColor:[[UIColor blackColor]colorWithAlphaComponent:0.5]];
        [MJCPromptsView showMessageTextColor:[UIColor whiteColor]];
    }else{
        [MJCPromptsView showMessageColor:[[UIColor whiteColor]colorWithAlphaComponent:0.5]];
        [MJCPromptsView showMessageTextColor:[UIColor blackColor]];
    }
}

// !!!:背景颜色
+(void)showMessageColor:(UIColor *)messageColor;
{
    
    [MJCPromptsView showMessageColor:messageColor];
}
// !!!:文字颜色
+(void)showMessageTextColor:(UIColor *)textColor;
{
    [MJCPromptsView showMessageColor:textColor];
}


#pragma mark !!!:显示普通信息
// 显示文字和图片信息(带有图片和文字,自动消失)
+ (void)showAutoHiddenMessage:(NSString *)msg image:(UIImage *)image
{    
    [MJCPromptsView showAutoMessage:msg image:image textColor:nil msgHidden:YES];
    
    [self showPromptsMessagesStyle:MJCPromptsMessagesblack];
}
// 显示文字和图片信息(可添加文字,图片,是否隐藏,可修改类型)
+(void)showMessage:(NSString *)msg image:(UIImage *)image autoHidden:(BOOL)autoHidden messageStyle:(MJCPromptsMessagesStyle)MJCPromptsMessagesStyle;
{
    [self showMessage:msg image:image msgHidden:autoHidden];
    
    [self showPromptsMessagesStyle:MJCPromptsMessagesStyle];
    
}
// 显示文字和图片信息(可添加文字,图片,是否隐藏,可修改背景色)
+(void)showMessage:(NSString *)msg backColor:(UIColor *)backColor image:(UIImage *)image  msgHidden:(BOOL)msgHidden;
{
    [self showMessage:msg image:image msgHidden:msgHidden];
    [self showMessageColor:backColor];
}

// 显示文字和图片信息(带有文字和图片的)(是否自动消失)
+ (void)showMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden;
{
    if (msgHidden == YES) {
        [self showAutoHiddenMessage:msg image:image];
    
    }else{
        [MJCPromptsView showAutoMessage:msg image:image textColor:nil msgHidden:msgHidden];
        [self showPromptsMessageStyle:MJCPromptsMessageblack];
    }
}
// 显示普通信息(,自动消失)
+ (void)showAutoHiddenMessage:(NSString *)msg
{
    [self showAutoHiddenMessage:msg image:nil];
}
// 显示普通信息(是否消失)
+ (void)showMessage:(NSString *)msg msgHidden:(BOOL)msgHidden
{
    if (msgHidden == YES) {
        [self showAutoHiddenMessage:msg image:nil];
        
    }else{
        [MJCPromptsView showAutoMessage:msg image:nil textColor:nil msgHidden:msgHidden];
        [self showPromptsMessageStyle:MJCPromptsMessageblack];
    }
}

#pragma mark !!!:提显示成功信息
// 提显示成功信息
+(void)showAutoHiddenSuccess:(NSString *)successmsg messageStyle:(MJCPromptsMessageStyle)MJCPromptsMessageStyle
{
    [self showAutoHiddenSuccess:successmsg];
    [self showPromptsMessageStyle:MJCPromptsMessageStyle];
}

// 提显示成功信息(不自动消失,用户自己设置文字)
+ (void)showAutoHiddenSuccess:(NSString *)msg
{
    imageInter = 1;
    
    [self showAutoHiddenMessage:msg image:[UIImage imageNamed:@"successwhite"]];
    [self showPromptsMessageStyle:MJCPromptsMessageblack];
    
}

// 提显示成功信息(不自动消失,设置好文字了)
+(void)showAutoHiddenSuccess
{
    [self showAutoHiddenSuccess:@"加载成功..."];
    [self showPromptsMessageStyle:MJCPromptsMessageblack];
}


#pragma mark !!!:显示失败信息
// 显示失败信息
+(void)showAutoHiddenError:(NSString *)errormsg messageStyle:(MJCPromptsMessageStyle)MJCPromptsMessageStyle
{
    [self showAutoHiddenError:errormsg];
    [self showPromptsMessageStyle:MJCPromptsMessageStyle];
}

// 显示失败信息(不自动消失,用户自己设置文字)
+ (void)showAutoHiddenError:(NSString *)msg
{
    imageInter = 2;
    
    [self showAutoHiddenMessage:msg image:[UIImage imageNamed:@"errorwhite"]];
    [self showPromptsMessageStyle:MJCPromptsMessageblack];
}
// 显示失败信息(不自动消失,设置好文字了)
+ (void)showAutoHiddenError
{
    [self showAutoHiddenError:@"加载失败..."];
    [self showPromptsMessageStyle:MJCPromptsMessageblack];
}


#pragma mark !!!:正在加载信息
+(void)showLoading:(NSString *)loadingmsg messageStyle:(MJCPromptsMessageStyle)MJCPromptsMessageStyle;
{
    [self showLoading:loadingmsg];
    [self showPromptsMessageStyle:MJCPromptsMessageStyle];
}

// 正在加载信息(不自动消失,用户自己设置文字)
+ (void)showLoading:(NSString *)msg
{
    [MJCPromptsView showloading:msg textColor:nil];
    [self showPromptsMessageStyle:MJCPromptsMessageblack];
}

// 正在加载信息(不自动消失,设置好文字了)
+ (void)showLoading
{
    [self showLoading:@"正在加载中..."];
}


// !!!:隐藏指示栏
+ (void)hideDismiss
{
    [MJCPromptsView hideDismiss];
}

//设置失败和成功的图片
+(void)setupshowMessageImage:(NSString *)imageSucces errorImage:(NSString *)errorImage
{
    if (imageInter == 1) {
        [MJCPromptsView showMessageImage:[UIImage imageNamed:imageSucces]];
    }else if (imageInter == 2){
        [MJCPromptsView showMessageImage:[UIImage imageNamed:errorImage]];
    }else{
    }
}


@end
