//
//  MJCUpDataAdvertisView.h
//  MJCUpDateAdvertisView
//
//  Created by mjc on 16/11/15.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIView+MJCExtenSion.h"

//整个屏幕宽度
#define MJCScreenWidth [UIScreen mainScreen].bounds.size.width


@interface MJCPromptsMessage : NSObject

#pragma mark -- 显示普通信息
// 显示普通信息(,自动消失)
+ (void)showAutoHiddenMessage:(NSString *)msg;

// 显示普通信息(是否消失)
+ (void)showMessage:(NSString *)msg msgHidden:(BOOL)msgHidden;

// 显示文字和图片信息(可添加文字,图片,是否隐藏,可修改类型)
+(void)showMessage:(NSString *)msg image:(UIImage *)image autoHidden:(BOOL)autoHidden;
// 显示普通信息(可设置动画起始位置)
+(void)showMessage:(NSString *)msg image:(UIImage *)image autoHidden:(BOOL)autoHidden starFrame:(CGFloat)starFrame;

// 显示普通信息(可修改背景颜色,文字颜色,图片,是否自动隐藏,起始位置)
+(void)showMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame;
// 显示普通信息(可修改背景颜色,文字颜色,图片,是否自动隐藏,起始位置,窗口位置)
+(void)showMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame messageFrame:(CGRect)messageFrame;

// 显示文字和图片信息(带有图片和文字,是否自动消失)
+(void)showMessage:(NSString *)msg backColor:(UIColor *)backColor textColor:(UIColor *)textColor image:(UIImage *)image msgHidden:(BOOL)msgHidden;



#pragma mark -- 提示正在加载中
/** 提示正在加载中 (自行传参数)*/
+(void)showLoading:(NSString *)loadingmsg backColor:(UIColor *)backColor loadingFrame:(CGRect)loadingFrame;
/** 提示正在加载中 (自行传参数)*/
+(void)showLoading:(NSString *)loadingmsg backColor:(UIColor *)backColor;
/** 提示正在加载中(自传参数) */
+ (void)showLoading:(NSString *)msg;
/** 提示正在加载中(正在加载中) */
+ (void)showLoading;



#pragma mark -- 图片文字提示框

+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden;

/** 自定义Message的文字,图片,文字颜色,是否隐藏 */
+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 可设置起始位置 */
+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 */
+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame textFont:(CGFloat)textFont;

/** 自定义Message的文字,图片,文字颜色,是否隐藏,图片位置和文字位置 可设置起始位置 */
+ (void)showCustomMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor msgHidden:(BOOL)msgHidden starFrame:(CGFloat)starFrame imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame messageFrame:(CGRect)messageFrame textFont:(CGFloat)textFont;



/**
 * 隐藏消失提示框
 */
+ (void)hideDismiss;

/**
 * 修改message的Frame
 */
+(void)reviseMessageFrame:(CGRect)messageFrame;

/**
 * 修改Loading的Frame
 */
+(void)reviseLoadingFrame:(CGRect)loadingFrame;


/**
 * 修改自定义Message的Frame
 */
+ (void)reviseMessageCustomFrame:(CGRect)customFrame;


/**
 * 设置提示框背景颜色
 */
+(void)reviseMessageColor:(UIColor *)messageColor;

/**
 * 设置提示框文字的颜色
 */
+(void)reviseMessageTextColor:(UIColor *)textColor;


/** 设置图片位置 */
+(void)reviseCustomImageViewFrame:(CGRect)imageFrame;

/** 设置text位置 */
+(void)reviseCustomTextFrame:(CGRect)textFrame;

/** 设置text文字大小 */
+(void)reviseCustomTextFont:(CGFloat)textfont;

+(void)reviseLoadingTextFont:(CGFloat)textfont;

/** 自定义添加子控件 */
+(void)messageStarFrame:(CGFloat)starFrame addCusttomSubview:(UIView *)custtomSubview;


+(void)reviseClickDisappear:(BOOL)clickDisappear;

+(void)isHiddenEndShowAnimal:(BOOL)animal;

+(void)revisePromptedLayer:(CGFloat)layer;


@end
