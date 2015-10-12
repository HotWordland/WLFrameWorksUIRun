# WLFrameWorksUIRun
WLKit框架 - 布局 网络请求 一些常用扩展类 不断更新
#布局 - 将一个红色的view 尺寸为100 100 位于视图中心
```Objective-C
- (void)viewDidLoad {
    [super viewDidLoad];
    // 将一个红色的view 尺寸为100 100 位于视图中心
    //初始化View
    UIView *view = [UIView new];
    //添加进父视图
    [self.view addSubview:view];
    //设置背景颜色
    [view setBackgroundColor:[UIColor redColor]];
    /*** 布局核心 ***/
    //准备好view 为view添加autolayout属性
    PREPCONSTRAINTS(view);
    //设置尺寸
    CONSTRAIN_SIZE(view, 100, 100);
    //在父视图居中
    CENTER(view);
    /*** ***/
    
   }

```
# result
![](https://github.com/HotWordland/WLFrameWorksUIRun/blob/master/shot/layout-1.png)

#期待继续更新...
