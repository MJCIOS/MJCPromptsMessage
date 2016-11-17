//
//  MJCErrorVC.m
//  MJCPromptsMessageDemo
//
//  Created by mjc on 16/11/17.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCErrorVC.h"
#import "MJCPromptsMessage.h"

@interface MJCErrorVC ()

@end

@implementation MJCErrorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)one1:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenError];//加载失败
    
}
- (IBAction)two1:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenError:@"高考,失败了"];//可传文字参数
    
}
- (IBAction)three1:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenError:@"高考,失败了,拜拜" messageStyle:MJCPromptsTypeWhite];
    
}


- (IBAction)four1:(id)sender {
    
    [MJCPromptsMessage showAutoHiddenError:@"高考,失败了,加油,加油" backColor:[UIColor blueColor] errorImage:[UIImage imageNamed:@"infoblack@2x"]];
    
}
- (IBAction)yincang1:(id)sender {
    
    [MJCPromptsMessage hideDismiss];
}




@end
