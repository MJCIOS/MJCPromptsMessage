//
//  MJCPackageMessage.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/12/15.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCPackageMessage.h"
#import "MJCPromptsMessage.h"

static MJCPackageMessage *packageMessage =nil;

@implementation MJCPackageMessage

/** 获取单例 */
+ (MJCPackageMessage *)packageMessage
{
    @synchronized (self) {
        if (packageMessage == nil) {
            packageMessage = [[self alloc]init];
        }
        
    }
    return packageMessage;
}



#pragma mark -- 显示普通信息
// 显示普通信息(,自动消失)
+ (void)showsAutoHiddenMessage:(NSString *)msg;
{
    [MJCPromptsMessage showAutoHiddenMessage:msg];
}

// 显示普通信息(是否消失)
+ (void)showsMessage:(NSString *)msg msgHidden:(BOOL)msgHidden;
{
    [MJCPromptsMessage showMessage:msg msgHidden:msgHidden];
}

// 显示文字和图片信息(可添加文字,图片,是否隐藏,可修改类型)
+ (void)showsMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden;
{
    [MJCPromptsMessage showMessage:msg image:image autoHidden:msgHidden];
}

// 显示普通信息(可设置动画起始位置)
+ (void)showsMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame;
{
    [MJCPromptsMessage showMessage:msg image:image autoHidden:msgHidden starFrame:starFrame];
}

// 显示文字和图片信息(带有图片和文字,是否自动消失)
+ (void)showsMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden;
{
    [MJCPromptsMessage showMessage:msg backColor:backColor textColor:textColor image:image msgHidden:msgHidden];
}


// 显示普通信息(可修改背景颜色,文字颜色,图片,是否自动隐藏,起始位置)
+ (void)showsMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame;
{
    [MJCPromptsMessage showMessage:msg backColor:backColor textColor:textColor image:image msgHidden:msgHidden starFrame:starFrame];
}

// 显示普通信息(可修改背景颜色,文字颜色,图片,是否自动隐藏,起始位置,窗口位置)
+ (void)showsMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame messageFrame:(CGRect)messageFrame;
{
    [MJCPromptsMessage showMessage:msg backColor:backColor textColor:textColor image:image msgHidden:msgHidden starFrame:starFrame messageFrame:messageFrame];
}



#pragma mark -- 提示正在加载中
/** 提示正在加载中 (自行传参数)*/
+(void)showsLoading:(NSString *)loadingmsg backColor:(UIColor *)backColor loadingFrame:(CGRect)loadingFrame;
{
    [MJCPromptsMessage showLoading:loadingmsg backColor:backColor loadingFrame:loadingFrame];
}
/** 提示正在加载中 (自行传参数)*/
+(void)showsLoading:(NSString *)loadingmsg backColor:(UIColor *)backColor;
{
    [MJCPromptsMessage showLoading:loadingmsg backColor:backColor];
}
/** 提示正在加载中(自传参数) */
+ (void)showsLoading:(NSString *)msg;
{
    [MJCPromptsMessage showLoading:msg];
}
/** 提示正在加载中(正在加载中) */
+ (void)showsLoading;
{
    [MJCPromptsMessage showLoading];
}



#pragma mark -- 图片文字提示框

/** 自定义文字和图片是否隐藏 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden;
{
    [MJCPromptsMessage showCustomMessage:msg image:image msgHidden:msgHidden];
}

/** 自定义Message的文字,图片,文字颜色,是否隐藏 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;
{
    [MJCPromptsMessage showCustomMessage:msg image:image textColor:textColor msgHidden:msgHidden textFont:textFont];
}

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 可设置起始位置 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;
{
    [MJCPromptsMessage showCustomMessage:msg image:image textColor:textColor starFrame:starFrame msgHidden:msgHidden textFont:textFont];
}

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame textFont:(CGFloat)textFont;
{
    [MJCPromptsMessage showCustomMessage:msg image:image textColor:textColor msgHidden:msgHidden imageFrame:imageFrame lableFrame:lableFrame textFont:textFont];
}

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 可设置起始位置 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame messageFrame:(CGRect)messageFrame textFont:(CGFloat)textFont;
{
    [MJCPromptsMessage showCustomMessage:msg image:image textColor:textColor msgHidden:msgHidden starFrame:starFrame imageFrame:imageFrame lableFrame:lableFrame messageFrame:messageFrame textFont:textFont];

}



/**
 * 隐藏消失提示框
 */
+ (void)hideDismiss;
{
    [MJCPromptsMessage hideDismiss];
}

/**
 * 修改message的Frame
 */
+(void)revisesMessageFrame:(CGRect)messageFrame;
{
    [MJCPromptsMessage reviseMessageFrame:messageFrame];
}

/**
 * 修改Loading的Frame
 */
+(void)revisesLoadingFrame:(CGRect)loadingFrame;
{
    [MJCPromptsMessage reviseLoadingFrame:loadingFrame];
}


/**
 * 修改自定义Message的Frame
 */
+ (void)revisesMessageCustomFrame:(CGRect)customFrame;
{
    [MJCPromptsMessage reviseCustomTextFrame:customFrame];
}


/**
 * 设置提示框背景颜色
 */
+(void)revisesMessageColor:(UIColor *)messageColor;
{
    [MJCPromptsMessage reviseMessageColor:messageColor];
}

/**
 * 设置提示框文字的颜色
 */
+(void)revisesMessageTextColor:(UIColor *)textColor;
{
    [MJCPromptsMessage reviseMessageTextColor:textColor];
}


/** 设置图片位置 */
+(void)revisesCustomImageViewFrame:(CGRect)imageFrame;
{
    [MJCPromptsMessage reviseCustomImageViewFrame:imageFrame];
}

/** 设置text位置 */
+(void)revisesCustomTextFrame:(CGRect)textFrame;
{
    [MJCPromptsMessage reviseCustomTextFrame:textFrame];
}

/** 设置text文字大小 */
+(void)revisesCustomTextFont:(CGFloat)textfont;
{
    [MJCPromptsMessage reviseCustomTextFont:textfont];
}
/** 修改加载里面的文字大小 */
+(void)revisesLoadingTextFont:(CGFloat)textfont;
{
    [MJCPromptsMessage reviseLoadingTextFont:textfont];
}

/**
 * 是否实现点击隐藏
 */
+(void)isClickDisappear:(BOOL)clickDisappear;
{
    [MJCPromptsMessage reviseClickDisappear:clickDisappear];
}

/**
 * 是否有显示隐藏动画
 */
+(void)isHiddenEndShowAnimal:(BOOL)animal;
{
    [MJCPromptsMessage isHiddenEndShowAnimal:animal];
}

/**
 * 修改圆角
 */
+(void)revisesPromptedLayer:(CGFloat)layer;
{
    [MJCPromptsMessage revisePromptedLayer:layer];
}

/** 自定义添加子控件 */
+(void)messageStarFrame:(CGFloat)starFrame addCusttomSubview:(UIView *)custtomSubview;
{
    [MJCPromptsMessage messageStarFrame:starFrame addCusttomSubview:custtomSubview];
    
}



@end
