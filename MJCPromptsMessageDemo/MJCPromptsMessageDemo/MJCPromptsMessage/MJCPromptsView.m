//
//  MJCPromptsView.m
//  ZhongChuZhiHui
//
//  Created by mjc on 16/11/16.
//  Copyright © 2016年 ZhongChuZhiHui. All rights reserved.
//

#import "MJCPromptsView.h"
#import "UIView+MJCExtenSion.h"

//RBG颜色
#define MJCRGBColor(r,g,b,alphas) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:alphas]


//文字大小
#define MJCMessageFont [UIFont systemFontOfSize:12]

//整个屏幕宽度
#define MJCScreenWidth [UIScreen mainScreen].bounds.size.width

/** 消息的持续时间 */
static CGFloat const MJCMessageDuration = 2.0;


/** 消息显示\隐藏的动画时间 */
static CGFloat const MJCAnimationDuration = 0.5;


/** 间距 */
static CGFloat const MJCMargin = 20;

static CGFloat const MJCMarginTen = 10;


static int number;

///** 全局的窗口 */
static UIWindow *window;

//
static CGRect frames;

///** 定时器 */
static NSTimer *timer;

static UIButton *button;

static UILabel *label;

static UIActivityIndicatorView *loadingView;

static UIImageView *imageView;

@interface MJCPromptsView ()

@end

@implementation MJCPromptsView


/**
 * 创建显示窗口
 */
+ (void)showWindow:(CGFloat)starFrame;
{
    //窗口的frame
    CGFloat windowH = 50;
    frames = CGRectMake(0,starFrame,MJCScreenWidth,windowH);

    
    window = [[UIWindow alloc] init];
    window.hidden = YES;
    window.windowLevel = UIWindowLevelAlert;
    window.frame = frames;
    
    [self setupMessageColor:[[UIColor blackColor]colorWithAlphaComponent:0.5]];
    
    frames.origin.y = 64;
    
    if (number == 1) {
        [self showMessageFrame:frames];
    }else{
        [self showCustomFrame:frames];
    }
    
//    [UIView animateWithDuration:MJCAnimationDuration animations:^{
//        window.hidden = NO;//不隐藏
//        window.frame = frame;//并且重新赋值frame
//        [self showMessageFrame:frame];
//    }];
}


// !!!:显示普通信息
+ (void)showAutoMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden;
{
    number = 1;
    
    
    [timer invalidate];
    
    [self showWindow:starFrame];
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];

    [button addTarget:self action:@selector(hideDismiss) forControlEvents:UIControlEventTouchUpInside];
    
    button.titleLabel.numberOfLines = 0;
    

    [button setTitle:msg forState:UIControlStateNormal];
    
    [self setupMessageTextColor:textColor];

    button.titleLabel.font = MJCMessageFont;
    
    if (image) {
        
        [self setupMessageImage:image];
        
        button.titleEdgeInsets = UIEdgeInsetsMake(0,10, 0, 0);
        
    }
    
    button.frame = window.bounds;
    
    [window addSubview:button];
    
    
    if (msgHidden == YES) {
        timer = [NSTimer scheduledTimerWithTimeInterval:MJCMessageDuration target:self selector:@selector(hideDismiss) userInfo:nil repeats:NO];
    }else{
        [timer invalidate];
    }
    

}

+(void)showloading:(NSString *)loading textColor:(UIColor *)textColor
{
    number = 1;
    

    [timer invalidate];
    timer = nil;
    

    [self showWindow:-64];

    label = [[UILabel alloc] init];
    [self setupTextFont:12];
    label.text = loading;
    label.frame = window.bounds;
    label.textAlignment = NSTextAlignmentCenter;
    [self setupMessageTextColor:textColor];
//    label.userInteractionEnabled = YES;
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideDismiss)];
//    [label addGestureRecognizer:tapGesture];
    
//    if (loading == kNilOptions) {
//        label.text = @"正在加载中...";
//    }else{
//        if ([loading  isEqual: @""]) {
//            label.text = @"正在加载中...";
//        }else{
//            
//        }
//    }
    [window addSubview:label];
    

    loadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    
    [loadingView startAnimating];
    
    CGFloat msgW = [label.text sizeWithAttributes:@{NSFontAttributeName : label.font}].width;
    CGFloat centerX = (window.mjc_width- msgW) * 0.5 - MJCMargin;
    CGFloat centerY = window.mjc_height * 0.5;
    loadingView.center = CGPointMake(centerX, centerY);
    [window addSubview:loadingView];
}

// !!!:显示普通信息
+ (void)showMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont
{
    number = 1;
    
    //停止定时器
    [timer invalidate];
    // 显示窗口
    [self showWindow:starFrame];
    
    // 添加图片
    imageView = [[UIImageView alloc] init];
    imageView.image = image;
    imageView.mjc_width = window.mjc_height * 0.5;
    imageView.mjc_height = imageView.mjc_width;
    imageView.mjc_x = MJCMarginTen;
    //Y值中心点,等于窗口的高度的一半那个位置
    imageView.mjc_centerY = window.mjc_height * 0.5;;
    [window addSubview:imageView];
    
    // 创建lable
    label = [[UILabel alloc] init];
    [self setupMessageTextColor:textColor];
    label.backgroundColor = [UIColor clearColor];
    [self setupTextFont:textFont];
    label.textAlignment = NSTextAlignmentLeft;//文字向左对齐
    label.text = msg;
    label.numberOfLines = 0;//行数
    label.mjc_x =(imageView.mjc_width + MJCMarginTen)+MJCMarginTen;
    label.mjc_y = 0;
    label.mjc_width = window.mjc_width - (imageView.mjc_width + 10+10+10);
    label.mjc_height = window.mjc_height;
    
    label.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideDismiss)];
    [label addGestureRecognizer:tapGesture];
    
    [window addSubview:label];
    
    if (msgHidden == YES){
        // 定时器方法
        timer = [NSTimer scheduledTimerWithTimeInterval:MJCMessageDuration target:self selector:@selector(hideDismiss) userInfo:nil repeats:NO];
    }else{
        [timer invalidate];
    }

}


+ (void)showMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame textFont:(CGFloat)textFont;
{
    number = 2;
    
    //停止定时器
    [timer invalidate];
    // 显示窗口
    //    [self showWindow];
    [self showWindow:starFrame];
    
    // 添加图片
    imageView = [[UIImageView alloc] init];
    imageView.image = image;
    [self setupimageViewFrame:imageFrame];
    [window addSubview:imageView];
    
    // 创建lable
    label = [[UILabel alloc] init];
    [self setupMessageTextColor:textColor];
    label.backgroundColor = [UIColor clearColor];
    [self setupTextFont:textFont];
    label.textAlignment = NSTextAlignmentLeft;//文字向左对齐
    label.text = msg;
    label.numberOfLines = 0;//行数
    [self setupTextFrame:lableFrame];
    label.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideDismiss)];
    [label addGestureRecognizer:tapGesture];
    
    [window addSubview:label];
    
    if (msgHidden == YES) {
        // 定时器方法
        timer = [NSTimer scheduledTimerWithTimeInterval:MJCMessageDuration target:self selector:@selector(hideDismiss) userInfo:nil repeats:NO];
    }else{
        [timer invalidate];
    }

}


+(void)setupimageViewFrame:(CGRect)imageFrame
{
    [UIView animateWithDuration:MJCAnimationDuration animations:^{
        imageView.hidden = YES;
        imageView.frame = imageFrame;
    } completion:^(BOOL finished) {
        imageView.hidden = NO;
    }];    
}

+(void)setupTextFrame:(CGRect)textFrame
{
    [UIView animateWithDuration:MJCAnimationDuration animations:^{
        label.hidden = YES;
        label.frame = textFrame;
    } completion:^(BOOL finished) {
        label.hidden = NO;
    }];
}

+(void)setupTextFont:(CGFloat)textFont
{
    label.font = [UIFont systemFontOfSize:textFont];
}

// !!!:颜色
+(void)setupMessageColor:(UIColor *)messageColor;
{
    window.backgroundColor = messageColor;
}
// 设置图片
+(void)setupMessageImage:(UIImage *)image
{
    [button setImage:image forState:UIControlStateNormal];
}
//设置文字颜色
+(void)setupMessageTextColor:(UIColor *)TextColor
{
    [button setTitleColor:TextColor forState:UIControlStateNormal];
    
    label.textColor = TextColor;
}


// !!!:隐藏指示栏
+ (void)hideDismiss
{
    //动画的隐藏效果
    [UIView animateWithDuration:MJCAnimationDuration animations:^{
        window.mjc_y = - window.mjc_height;
    } completion:^(BOOL finished) { //动画完成之后
        [timer invalidate];//如果你不停止定时器,会与按钮方法冲突..
        window = nil;//直接将窗口为空
        timer = nil;//定时器为空
    }];
}



+(void)windowAddSubview:(CGFloat)starFrame addControls:(UIView *)addControls
{
    //起始位置
    [self showWindow:starFrame];
    
    [window addSubview:addControls];
}


//设置自定义Message的位置
+(void)showCustomFrame:(CGRect)customFrame
{
    [UIView animateWithDuration:MJCAnimationDuration animations:^{
        window.hidden = NO;//不隐藏
        window.frame = customFrame;//并且重新赋值frame
        button.frame = window.bounds;
        button.hidden = YES;
    } completion:^(BOOL finished) {
        button.hidden = NO;
    }];
    
    
}

//设置位置
+(void)showMessageFrame:(CGRect)messageFrame
{
//    [UIView animateWithDuration:MJCAnimationDuration animations:^{
//        window.hidden = NO;//不隐藏
//        window.frame = messageFrame;//并且重新赋值frame
//    }];
    
    [UIView animateWithDuration:MJCAnimationDuration animations:^{
        window.hidden = NO;//不隐藏
        window.frame = messageFrame;//并且重新赋值frame
        button.frame = window.bounds;
        button.hidden = YES;
        imageView.hidden = YES;
        label.hidden = YES;
        
        imageView.mjc_width = window.mjc_height * 0.5;
        imageView.mjc_height = imageView.mjc_width;
        imageView.mjc_x = MJCMarginTen;
        CGFloat centerY = window.mjc_height * 0.5;//Y值中心点,等于窗口的高度的一半那个位置
        imageView.mjc_centerY = centerY;
        
        label.mjc_x =(imageView.mjc_width + MJCMarginTen)+MJCMarginTen;
        label.mjc_y = 0;
        label.mjc_width = window.mjc_width - (imageView.mjc_width + 10+10+10);
        label.mjc_height = window.mjc_height;

        
    } completion:^(BOOL finished) {
        button.hidden = NO;
        label.hidden = NO;
        imageView.hidden = NO;
    }];

    
//    button.frame = window.bounds;
//    
//    imageView.mjc_width = window.mjc_height * 0.5;
//    imageView.mjc_height = imageView.mjc_width;
//    imageView.mjc_x = MJCMarginTen;
//    CGFloat centerY = window.mjc_height * 0.5;//Y值中心点,等于窗口的高度的一半那个位置
//    imageView.mjc_centerY = centerY;
//    
//    label.mjc_x =(imageView.mjc_width + MJCMarginTen)+MJCMarginTen;
//    label.mjc_y = 0;
//    label.mjc_width = window.mjc_width - (imageView.mjc_width + 10+10+10);
//    label.mjc_height = window.mjc_height;
    
}

+(void)setupLoadingTextFont:(CGFloat)textFont
{
    label.font = [UIFont systemFontOfSize:textFont];
    
    
    CGFloat msgW = [label.text sizeWithAttributes:@{NSFontAttributeName : label.font}].width;
    
    CGFloat centerX = (window.mjc_width- msgW) * 0.5 - MJCMargin;
    
    CGFloat centerY = window.mjc_height * 0.5;
    
    loadingView.center = CGPointMake(centerX, centerY);

}

//设置位置
+(void)setupLoadingFrame:(CGRect)messageFrame
{
    [UIView animateWithDuration:MJCAnimationDuration animations:^{
        window.hidden = NO;//不隐藏
        window.frame = messageFrame;//并且重新赋值frame
    }];
    
    label.frame = window.bounds;
    label.textAlignment = NSTextAlignmentCenter;
    

    CGFloat msgW = [label.text sizeWithAttributes:@{NSFontAttributeName : label.font}].width;
    
    CGFloat centerX = (window.mjc_width- msgW) * 0.5 - MJCMargin;
    
    CGFloat centerY = window.mjc_height * 0.5;
    
    loadingView.center = CGPointMake(centerX, centerY);

}




@end
