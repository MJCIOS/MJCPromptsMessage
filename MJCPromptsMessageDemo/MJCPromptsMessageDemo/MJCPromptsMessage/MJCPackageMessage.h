//
//  MJCPackageMessage.h
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/12/15.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIView+MJCExtenSion.h"


//整个屏幕宽度
#define MJCScreenWidth [UIScreen mainScreen].bounds.size.width

@interface MJCPackageMessage : NSObject

+(MJCPackageMessage *)packageMessage;

#pragma mark -- 显示普通信息
// 显示普通信息(,自动消失)
+ (void)showsAutoHiddenMessage:(NSString *)msg;

// 显示普通信息(是否消失)
+ (void)showsMessage:(NSString *)msg msgHidden:(BOOL)msgHidden;


// 显示文字和图片信息(可添加文字,图片,是否隐藏,可修改类型)
+ (void)showsMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden;

// 显示普通信息(可设置动画起始位置)
+ (void)showsMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)autoHidden starFrame:(CGFloat)starFrame;

// 显示普通信息(可修改背景颜色,文字颜色,图片,是否自动隐藏,起始位置)
+ (void)showsMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame;

// 显示普通信息(可修改背景颜色,文字颜色,图片,是否自动隐藏,起始位置,窗口位置)
+ (void)showsMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame messageFrame:(CGRect)messageFrame;

// 显示文字和图片信息(带有图片和文字,是否自动消失)
+ (void)showsMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden;


#pragma mark -- 提示正在加载中
/** 提示正在加载中 (自行传参数)*/
+(void)showsLoading:(NSString *)loadingmsg backColor:(UIColor *)backColor loadingFrame:(CGRect)loadingFrame;

/** 提示正在加载中 (自行传参数)*/
+(void)showsLoading:(NSString *)loadingmsg backColor:(UIColor *)backColor;

/** 提示正在加载中(自传参数) */
+ (void)showsLoading:(NSString *)msg;

/** 提示正在加载中(正在加载中) */
+ (void)showsLoading;



#pragma mark -- 图片文字提示框

/** 自定义Message的文字,图片,文字颜色,是否隐藏 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden;

/** 自定义Message的文字,图片,文字颜色,是否隐藏 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 可设置起始位置 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame textFont:(CGFloat)textFont;

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 可设置起始位置 */
+ (void)showsCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame messageFrame:(CGRect)messageFrame textFont:(CGFloat)textFont;



/**
 * 隐藏消失提示框
 */
+ (void)hideDismiss;

/**
 * 修改message的Frame
 */
+(void)revisesMessageFrame:(CGRect)messageFrame;

/**
 * 修改Loading的Frame
 */
+(void)revisesLoadingFrame:(CGRect)loadingFrame;


/**
 * 修改自定义Message的Frame
 */
+ (void)revisesMessageCustomFrame:(CGRect)customFrame;


/**
 * 设置提示框背景颜色
 */
+(void)revisesMessageColor:(UIColor *)messageColor;

/**
 * 设置提示框文字的颜色
 */
+(void)revisesMessageTextColor:(UIColor *)textColor;


/** 设置图片位置 */
+(void)revisesCustomImageViewFrame:(CGRect)imageFrame;

/** 设置text位置 */
+(void)revisesCustomTextFrame:(CGRect)textFrame;

/** 设置text文字大小 */
+(void)revisesCustomTextFont:(CGFloat)textfont;

/** 修改加载里面的文字大小 */
+(void)revisesLoadingTextFont:(CGFloat)textfont;

/** 自定义添加子控件 */
+(void)messageStarFrame:(CGFloat)starFrame addCusttomSubview:(UIView *)custtomSubview;

/**
 * 是否实现点击隐藏
 */
+(void)isClickDisappear:(BOOL)clickDisappear;

/**
 * 是否有显示隐藏动画
 */
+(void)isHiddenEndShowAnimal:(BOOL)animal;

/**
 * 修改圆角
 */
+(void)revisesPromptedLayer:(CGFloat)layer;


@end
