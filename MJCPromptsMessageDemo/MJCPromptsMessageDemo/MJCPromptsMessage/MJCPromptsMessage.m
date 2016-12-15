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



@implementation MJCPromptsMessage

#pragma mark !!!:显示普通信息
// 显示普通信息(,自动消失)
+ (void)showAutoHiddenMessage:(NSString *)msg
{
    [self showMessage:msg image:nil autoHidden:YES];
}
// 显示普通信息(是否消失)
+ (void)showMessage:(NSString *)msg msgHidden:(BOOL)msgHidden
{
    [MJCPromptsView showAutoMessage:msg image:nil textColor:nil starFrame:-64 msgHidden:msgHidden];
}
// 显示文字和图片信息(可添加文字,图片,是否隐藏,可修改类型)
+(void)showMessage:(NSString *)msg image:(UIImage *)image autoHidden:(BOOL)autoHidden
{
    [MJCPromptsView showAutoMessage:msg image:image textColor:nil starFrame:-64 msgHidden:autoHidden];
}
// 显示普通信息(可设置动画起始位置)
+(void)showMessage:(NSString *)msg image:(UIImage *)image autoHidden:(BOOL)autoHidden starFrame:(CGFloat)starFrame
{
    [MJCPromptsView showAutoMessage:msg image:image textColor:nil starFrame:starFrame msgHidden:autoHidden];
}
// 显示普通信息(可修改背景颜色,文字颜色,图片,是否自动隐藏,起始位置)
+(void)showMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame
{
    [MJCPromptsView showAutoMessage:msg image:image textColor:nil starFrame:starFrame msgHidden:msgHidden];
    [MJCPromptsView setupMessageTextColor:textColor];
    [MJCPromptsView setupMessageColor:backColor];
}
// 显示普通信息(可修改背景颜色,文字颜色,图片,是否自动隐藏,起始位置,窗口位置)
+(void)showMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame messageFrame:(CGRect)messageFrame;
{
    [MJCPromptsView showAutoMessage:msg image:image textColor:textColor starFrame:starFrame msgHidden:msgHidden];
    [self reviseMessageColor:backColor];
    [self reviseMessageFrame:messageFrame];
}

// 显示文字和图片信息(带有图片和文字,是否自动消失)
+(void)showMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden;
{
    [MJCPromptsView showAutoMessage:msg image:image textColor:nil starFrame:-64 msgHidden:msgHidden];    
    [MJCPromptsView setupMessageTextColor:textColor];
    [MJCPromptsView setupMessageColor:backColor];
}


#pragma mark !!!:正在加载信息
+(void)showLoading:(NSString *)loadingmsg backColor:(UIColor *)backColor loadingFrame:(CGRect)loadingFrame;
{
    [self showLoading:loadingmsg];
    [self reviseMessageColor:backColor];
    [self reviseLoadingFrame:loadingFrame];
}

// 正在加载信息(自动消失,背景颜色)
+(void)showLoading:(NSString *)loadingmsg backColor:(UIColor *)backColor;
{
    [self showLoading:loadingmsg];
    
    [MJCPromptsView setupMessageColor:backColor];
}

// 正在加载信息(不自动消失,用户自己设置文字)
+ (void)showLoading:(NSString *)msg
{
    [MJCPromptsView showloading:msg textColor:nil];
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


/** 自定义Message的文字,图片,文字颜色,是否隐藏 */
+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;
{
    [MJCPromptsView showMessage:msg image:image textColor:textColor starFrame:starFrame msgHidden:msgHidden textFont:textFont];
}

+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;
{
    [MJCPromptsView showMessage:msg image:image textColor:textColor starFrame:-64 msgHidden:msgHidden textFont:textFont];
}

+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden;
{
    [MJCPromptsView showMessage:msg image:image textColor:[UIColor blackColor] starFrame:-64 msgHidden:msg textFont:12];
}


/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 */
+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame textFont:(CGFloat)textFont;
{
    [MJCPromptsView showMessage:msg image:image textColor:textColor starFrame:-64 msgHidden:msgHidden imageFrame:imageFrame lableFrame:lableFrame textFont:textFont];
}

+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame messageFrame:(CGRect)messageFrame textFont:(CGFloat)textFont;
{
    [MJCPromptsView showMessage:msg image:image textColor:textColor starFrame:starFrame msgHidden:msgHidden imageFrame:imageFrame lableFrame:lableFrame textFont:textFont];
    
    [MJCPromptsView showCustomFrame:messageFrame];
}


//设置图片位置
+(void)reviseCustomImageViewFrame:(CGRect)imageFrame;
{
    [MJCPromptsView setupimageViewFrame:imageFrame];
}
//设置text位置
+(void)reviseCustomTextFrame:(CGRect)textFrame;
{
    [MJCPromptsView setupTextFrame:textFrame];
}
//设置text文字大小
+(void)reviseCustomTextFont:(CGFloat)textfont
{
    [MJCPromptsView setupTextFont:textfont];
}

+(void)reviseLoadingTextFont:(CGFloat)textfont;
{
    [MJCPromptsView setupLoadingTextFont:textfont];
}

//设置提示框frame
+(void)reviseMessageFrame:(CGRect)messageFrame;
{
    [MJCPromptsView showMessageFrame:messageFrame];
}

//设置提示框背景色
+(void)reviseMessageColor:(UIColor *)messageColor;
{
    [MJCPromptsView setupMessageColor:messageColor];
}
//设置提示框文字颜色
+(void)reviseMessageTextColor:(UIColor *)textColor;
{
    [MJCPromptsView setupMessageTextColor:textColor];
}

/**
 * 修改自定义Message的Frame
 */
+(void)reviseMessageCustomFrame:(CGRect)customFrame
{
    [MJCPromptsView showCustomFrame:customFrame];
}

/** 添加子控件 */
+(void)messageStarFrame:(CGFloat)starFrame addCusttomSubview:(UIView *)custtomSubview;
{
    [MJCPromptsView windowAddSubview:starFrame addControls:custtomSubview];
}

+(void)reviseLoadingFrame:(CGRect)loadingFrame
{
    [MJCPromptsView setupLoadingFrame:loadingFrame];
}


+(void)revisePromptedLayer:(CGFloat)layer
{
    [MJCPromptsView setupPromptedLayer:layer];
}

+(void)reviseClickDisappear:(BOOL)clickDisappear;
{
    [MJCPromptsView isClickdisappear:clickDisappear];
}

+(void)isHiddenEndShowAnimal:(BOOL)animal
{
    [MJCPromptsView isHiddernEndShowAnimal:animal];
}

@end
