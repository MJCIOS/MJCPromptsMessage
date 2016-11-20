# MJCPromptsMessage
一款超轻量级广告或提示栏的窗口,如果你重复点击,它也不会重复创建N多个提示栏,每次创建新的提示栏,都会自动销毁上一个提示栏...

![image](https://github.com/MJCIOS/MJCPromptsMessage/raw/master/MJCPromptsMessageDemo/MJCPromptsMessageDemo/成功与失败.gif)
![image](https://github.com/MJCIOS/MJCPromptsMessage/raw/master/MJCPromptsMessageDemo/MJCPromptsMessageDemo/正在加载.gif)
![image](https://github.com/MJCIOS/MJCPromptsMessage/raw/master/MJCPromptsMessageDemo/MJCPromptsMessageDemo/自定义样式.gif)

###提示栏创建(一行代码即可使用)提供了很多方法,也可自行修改尺寸位置,可自行添加子控件上去,具体方法,进入.h文件看下
    
    [MJCPromptsMessage showMessage:@"最新加载20条数据" msgHidden:NO];
    
    [MJCPromptsMessage showMessage:@"可传背景色和文字颜色和图片" backColor:[UIColor redColor] textColor:[UIColor purpleColor] image:[UIImage imageNamed:@"successwhite"] msgHidden:NO];
    
    [MJCPromptsMessage showAutoHiddenSuccess:@"求婚,成功了,偶也" messageStyle:MJCPromptsTypeWhite];
    
    
    [MJCPromptsMessage showAutoHiddenError:@"高考,失败了,拜拜" messageStyle:MJCPromptsTypeWhite];
    
    [MJCPromptsMessage showLoading:@"高考成功,祝贺我,偶也" backColor:[UIColor redColor]];
    
    
    
    //添加子控件
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor redColor];
    view1.frame = CGRectMake(0, 0, 320, 50);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor purpleColor];
    [button addTarget:self action:@selector(disss) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(40, 0, 100, 20);
    [view1 addSubview:button];
    
    UILabel *lasdsa = [[UILabel alloc]init];
    lasdsa.text = @"asdsadsadas";
    lasdsa.textColor = [UIColor whiteColor];
    lasdsa.backgroundColor = [UIColor blackColor];
    lasdsa.frame = CGRectMake(0, 0, 50, 20);
    [button addSubview:lasdsa];
    
    //自定义添加子控件上去
    [MJCPromptsMessage mjc_addSubview:view1];


