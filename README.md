# MJCPromptsMessage
一款超轻量级广告或提示栏的窗口

![image](https://github.com/MJCIOS/MJCPromptsMessage/raw/master/MJCPromptsMessageDemo/MJCPromptsMessageDemo/成功与失败.gif)
![image](https://github.com/MJCIOS/MJCPromptsMessage/raw/master/MJCPromptsMessageDemo/MJCPromptsMessageDemo/正在加载.gif)
![image](https://github.com/MJCIOS/MJCPromptsMessage/raw/master/MJCPromptsMessageDemo/MJCPromptsMessageDemo/自定义样式.gif)

###提示栏创建(一行代码即可使用)
    
    [MJCPromptsMessage showMessage:@"最新加载20条数据" msgHidden:NO];
    
    [MJCPromptsMessage showMessage:@"可传背景色和文字颜色和图片" backColor:[UIColor redColor] textColor:[UIColor purpleColor] image:[UIImage imageNamed:@"successwhite"] msgHidden:NO];
    
    [MJCPromptsMessage showAutoHiddenSuccess:@"求婚,成功了,偶也" messageStyle:MJCPromptsTypeWhite];
    
    
    [MJCPromptsMessage showAutoHiddenError:@"高考,失败了,拜拜" messageStyle:MJCPromptsTypeWhite];
    
    [MJCPromptsMessage showLoading:@"高考成功,祝贺我,偶也" backColor:[UIColor redColor]];

