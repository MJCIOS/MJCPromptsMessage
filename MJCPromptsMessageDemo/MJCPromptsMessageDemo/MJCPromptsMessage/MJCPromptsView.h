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


+ (void)showAutoMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden;


+(void)showloading:(NSString *)loading textColor:(UIColor *)textColor;


+ (void)showMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont;


+ (void)showMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame textFont:(CGFloat)textFont;


+(void)windowAddSubview:(CGFloat)starFrame addControls:(UIView *)addControls;

+(void)showMessageFrame:(CGRect)messageFrame;

+(void)showCustomFrame:(CGRect)customFrame;

+ (void)hideDismiss;

+(void)setupimageViewFrame:(CGRect)imageFrame;

+(void)setupTextFrame:(CGRect)textFrame;

+(void)setupTextFont:(CGFloat)textFont;


+(void)setupMessageColor:(UIColor *)messageColor;

+(void)setupMessageTextColor:(UIColor *)TextColor;

+(void)setupMessageImage:(UIImage *)image;

+(void)setupLoadingFrame:(CGRect)messageFrame;

+(void)setupLoadingTextFont:(CGFloat)textFont;

+(void)setupPromptedLayer:(CGFloat)layer;

+(void)isClickdisappear:(BOOL)isClickdisappear;

+(void)isHiddernEndShowAnimal:(BOOL)animal;

@end
