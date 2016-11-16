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

typedef enum {
    MJCPromptsMessageblack,
    MJCPromptsMessageWhite
}MJCPromptsMessageStyle;

typedef enum {
    MJCPromptsMessagesblack,
    MJCPromptsMessagesWhite
}MJCPromptsMessagesStyle;

@interface MJCPromptsMessage : NSObject


/**
 * MJCPromptsMessageStyle类型 (成功与失败的样式)
 */
+(void)showPromptsMessageStyle:(MJCPromptsMessageStyle)MJCPromptsMessageStyle;

/**
 * MJCPromptsMessagesStyle类型 (样式)
 */
+(void)showPromptsMessagesStyle:(MJCPromptsMessagesStyle)MJCPromptsMessagesStyle;


/**
 * 提示图片或文字信息(可修改类型)
 */
+(void)showMessage:(NSString *)msg image:(UIImage *)image autoHidden:(BOOL)autoHidden messageStyle:(MJCPromptsMessagesStyle)MJCPromptsMessagesStyle;
/**
 * 提示图片或文字信息(可修改背景色)
 */
+(void)showMessage:(NSString *)msg backColor:(UIColor *)backColor image:(UIImage *)image  msgHidden:(BOOL)msgHidden;

/**
 * 提示图片或文字信息(自动消失)
 */
+ (void)showAutoHiddenMessage:(NSString *)msg image:(UIImage *)image;
/**
 * 提示图片或文字信息(是否自动消失)
 */
+ (void)showMessage:(NSString *)msg image:(UIImage *)image msgHidden:(BOOL)msgHidden;

/**
 * 提示文字信息(自动消失)
 */
+ (void)showAutoHiddenMessage:(NSString *)msg;

/**
 * 提示文字信息(是否消失)
 */
+ (void)showMessage:(NSString *)msg msgHidden:(BOOL)msgHidden;



/**
 * 提示成功信息(自动消失)
 */
+(void)showAutoHiddenSuccess:(NSString *)successmsg messageStyle:(MJCPromptsMessageStyle)MJCPromptsMessageStyle;
+ (void)showAutoHiddenSuccess:(NSString *)msg;
/** 提示加载成功(加载成功) */
+ (void)showAutoHiddenSuccess;




/**
 * 提示失败信息(自动消失)
 */
+(void)showAutoHiddenError:(NSString *)errormsg messageStyle:(MJCPromptsMessageStyle)MJCPromptsMessageStyle;
+ (void)showAutoHiddenError:(NSString *)msg;
/** 提示失败信息(加载失败) */
+ (void)showAutoHiddenError;


/**
 * 提示正在加载中(不自动消失)
 */
+(void)showLoading:(NSString *)loadingmsg messageStyle:(MJCPromptsMessageStyle)MJCPromptsMessageStyle;
+ (void)showLoading:(NSString *)msg;
/** 提示正在加载中(正在加载中) */
+ (void)showLoading;



/**
 * 隐藏消失提示框
 */
+ (void)hideDismiss;

/**
 * 设置提示框的颜色
 */
+(void)showMessageColor:(UIColor *)messageColor;

/**
 * 设置提示框文字的颜色
 */
+(void)showMessageTextColor:(UIColor *)textColor;



@end
