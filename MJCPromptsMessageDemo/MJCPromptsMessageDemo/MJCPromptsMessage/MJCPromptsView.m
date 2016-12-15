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
static CGFloat  MJCAnimationDuration;


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


/** 懒加载 */
+ (UIWindow *)window
{
    if (window == nil) {
        
        window = [[UIWindow alloc]init];
        
        window.hidden = YES;//初始隐藏
        window.windowLevel = UIWindowLevelAlert;//窗口显示位置
        window.frame = frames;//窗口的frame,当我们创建的时候,将y值等于负的,也就是在超过了窗口的大小位置
        [self setupMessageColor:[[UIColor blackColor]colorWithAlphaComponent:0.5]];
        // 动画效果
        frames.origin.y = 64;//在这将frame的y值,再调为,我们所想要的位置
        
        if (number == 1) {
            [self showMessageFrame:frames];
        }else{
            [self showCustomFrame:frames];
        }
        
    }
    
    return window;
}
/** 懒加载 */
+ (UIButton *)button
{
    
    if (button == nil) {
        
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = window.bounds;//按钮的位置
    }
    
    return button;
}


/** 懒加载 */
+ (UIActivityIndicatorView *)loadingView
{
    
    if (loadingView == nil) {
        
        loadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        
    }
    
    return loadingView;
}

/** 懒加载 */
+ (UILabel *)label
{
    if (label == nil) {
        
        label = [[UILabel alloc]init];
    }
    return label;
}

/** 懒加载 */
+ (UIImageView *)imageView
{
    if (imageView == nil) {
        imageView = [[UIImageView alloc]init];
    }
    return imageView;
}


// 创建窗口
+ (void)showWindow:(CGFloat)starFrame;
{
    CGFloat windowH = 50;//窗口的frame
    frames = CGRectMake(0,starFrame,MJCScreenWidth,windowH);
    [self window];//创建窗口
    [self setupPromptedLayer:0];
    
}

// !!!:显示普通信息
+ (void)showAutoMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden;
{
    number = 1;
    [timer invalidate];//停止定时器
    [self showWindow:starFrame];// 显示窗口
    [self button];
    [button addTarget:self action:@selector(hideDismiss) forControlEvents:UIControlEventTouchUpInside];//按钮的点击方法
    button.titleLabel.numberOfLines = 0;
    [button setTitle:msg forState:UIControlStateNormal];//设置按钮的文字
    [self setupMessageTextColor:textColor];
    button.titleLabel.font = MJCMessageFont;//按钮文字大小
    if (image) { // 如果有图片
        //赋值图片
        [self setupMessageImage:image];
        //修改文字内边距位置
        button.titleEdgeInsets = UIEdgeInsetsMake(0,10, 0, 0);
    }
//    button.frame = window.bounds;//按钮的位置
    [window addSubview:button];
    if (msgHidden == YES) {
        // 定时器方法
        timer = [NSTimer scheduledTimerWithTimeInterval:MJCMessageDuration target:self selector:@selector(hideDismiss) userInfo:nil repeats:NO];
    }else{
        [timer invalidate];
    }
}

//显示加载信息
+(void)showloading:(NSString *)loading textColor:(UIColor *)textColor
{
    number = 1;
    [timer invalidate];// 停止定时器
    timer = nil;
    [self showWindow:-64];//显示窗口
    [self label];
    [self setupTextFont:12];
    label.text = loading;
    label.frame = window.bounds;
    label.textAlignment = NSTextAlignmentCenter;
    [self setupMessageTextColor:textColor];
    [window addSubview:label];
    [self loadingView];// 添加旋转器
    [loadingView startAnimating];//开始旋转
    //计算文字宽度
    CGFloat msgW = [label.text sizeWithAttributes:@{NSFontAttributeName : label.font}].width;
    //(窗口的宽度-文字的宽度)的一半 - 离文字的间距
    CGFloat centerX = (window.mjc_width- msgW) * 0.5 - MJCMargin;
    //Y值中心点,等于窗口的高度的一半那个位置
    CGFloat centerY = window.mjc_height * 0.5;
    //设置旋转器的中心点
    loadingView.center = CGPointMake(centerX, centerY);
    [window addSubview:loadingView];
}

// !!!:显示普通信息
+ (void)showMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden textFont:(CGFloat)textFont
{
    number = 1;
    [timer invalidate];//停止定时器
    [self showWindow:starFrame];// 显示窗口
    [self imageView];// 添加图片
    imageView.image = image;
    [window addSubview:imageView];
    [self label];// 创建lable
    [self setupMessageTextColor:textColor];
    label.backgroundColor = [UIColor clearColor];
    [self setupTextFont:textFont];
    label.text = msg;
    label.textAlignment = NSTextAlignmentLeft;//文字向左对齐
    label.numberOfLines = 0;//行数
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
    [self setupimageFrame];
    [self setuplableFrame];
}

+ (void)showMessage:(NSString *)msg image:(UIImage *)image textColor:(UIColor *)textColor starFrame:(CGFloat)starFrame msgHidden:(BOOL)msgHidden imageFrame:(CGRect)imageFrame lableFrame:(CGRect)lableFrame textFont:(CGFloat)textFont;
{
    number = 2;
    [timer invalidate];//停止定时器
    [self showWindow:starFrame];// 显示窗口
    [self imageView];// 添加图片
    imageView.image = image;
    [self setupimageViewFrame:imageFrame];
    [window addSubview:imageView];
    [self label];// 创建lable
    [self setupMessageTextColor:textColor];
    label.backgroundColor = [UIColor clearColor];
    [self setupTextFont:textFont];
    [self setupTextFrame:lableFrame];
    label.text = msg;
    label.textAlignment = NSTextAlignmentLeft;//文字向左对齐
    label.numberOfLines = 0;//行数
    label.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideDismiss)];
    [label addGestureRecognizer:tapGesture];
    [window addSubview:label];
    if (msgHidden == YES) {
        timer = [NSTimer scheduledTimerWithTimeInterval:MJCMessageDuration target:self selector:@selector(hideDismiss) userInfo:nil repeats:NO];// 定时器方法
    }else{
        [timer invalidate];
    }
}

+(void)setuplableFrame
{
    label.mjc_x =(imageView.mjc_width + MJCMarginTen)+MJCMarginTen;
    label.mjc_y = 0;
    label.mjc_width = window.mjc_width - (imageView.mjc_width + 10+10+10);
    label.mjc_height = window.mjc_height;
}
+(void)setupimageFrame
{
    imageView.mjc_width = window.mjc_height * 0.5;
    imageView.mjc_height = imageView.mjc_width;
    imageView.mjc_x = MJCMarginTen;
    imageView.mjc_centerY = window.mjc_height * 0.5;;//Y值中心点,等于窗口的高度的一半那个位置
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
        //直接将窗口的y =  它的负数高度... (反正改变它的y值就可以了)
        window.mjc_y = -window.mjc_height;
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
    
    
}

+(void)setupLoadingTextFont:(CGFloat)textFont
{
    label.font = [UIFont systemFontOfSize:textFont];
    
    //计算文字宽度
    CGFloat msgW = [label.text sizeWithAttributes:@{NSFontAttributeName : label.font}].width;
    //(窗口的宽度-文字的宽度)的一半 - 离文字的间距
    CGFloat centerX = (window.mjc_width- msgW) * 0.5 - MJCMargin;
    //Y值中心点,等于窗口的高度的一半那个位置
    CGFloat centerY = window.mjc_height * 0.5;
    //设置旋转器的中心点
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
    
    //计算文字宽度
    CGFloat msgW = [label.text sizeWithAttributes:@{NSFontAttributeName : label.font}].width;
    //(窗口的宽度-文字的宽度)的一半 - 离文字的间距
    CGFloat centerX = (window.mjc_width- msgW) * 0.5 - MJCMargin;
    //Y值中心点,等于窗口的高度的一半那个位置
    CGFloat centerY = window.mjc_height * 0.5;
    //设置旋转器的中心点
    loadingView.center = CGPointMake(centerX, centerY);
    
}

+(void)isClickdisappear:(BOOL)isClickdisappear
{
    label.userInteractionEnabled = isClickdisappear;
}

+(void)isHiddernEndShowAnimal:(BOOL)animal
{
    if (animal == YES) {
        MJCAnimationDuration = 0.5;
    }else{
        MJCAnimationDuration = 0;
    }
    
}

+(void)setupPromptedLayer:(CGFloat)layer
{
    window.layer.masksToBounds = YES;
    window.layer.cornerRadius = layer;//圆角
}



@end
