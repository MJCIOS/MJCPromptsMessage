//
//  MJCPromptsView.h
//  ZhongChuZhiHui
//
//  Created by mjc on 16/11/16.
//  Copyright © 2016年 ZhongChuZhiHui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MJCPromptsView : NSObject

+(void)showMessageColor:(UIColor *)messageColor;

+(void)showMessageTextColor:(UIColor *)TextColor;

+(void)showMessageImage:(UIImage *)image;

+ (void)showAutoMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden;


+(void)showloading:(NSString *)loading textColor:(UIColor *)textColor;


+(void)showMessageFrame:(CGRect)messageFrame;

+(void)showCustomFrame:(CGRect)customFrame;

+ (void)showMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden;

+ (void)showMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame;

+(void)windowAddSubview:(CGFloat)starFrame addControls:(UIView *)addControls;

+ (void)hideDismiss;

@end
