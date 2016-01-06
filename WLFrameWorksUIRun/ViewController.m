//
//  ViewController.m
//  WLFrameWorksUIRun
//
//  Created by Ronaldinho on 15/6/10.
//  Copyright (c) 2015年 HotWordLand. All rights reserved.
//
#import "ViewController.h"
#import <WLKit/WLKit.h>
@interface ViewController ()

@end

@implementation ViewController

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
-(void)request
{
//       [ProgressHUD showSuccess:@"YES"];
//    [NetEngine ShareWithbaseDomain:BaseDomain basePath:BasePath basePort:nil];
//    [NetEngine createHttpAction:@"selectcase.php" withParams:nil onCompletion:^(id resData, BOOL isCache) {
//        NSString *str = [resData jsonEncodedKeyValueString];
//        ALERT_TOAST_VIEW(str);
//
//    } onError:^(NSError *error) {
//        
//    } useCache:NO withMask:nil];
//    [NetEngine ShareWithbaseDomain:BaseDomain basePath:BasePath basePort:nil];
//    [NetEngine createHttpActionFullUrl:@"https://www.baidu.com" withParams:nil onCompletion:^(id resData, BOOL isCache) {
//        DLog(@"%@",resData);
//    } onError:^(NSError *error) {
//        
//    } useCache:NO withMask:nil];


}
-(CGRect)getCircleFrameWithLayer:(CAShapeLayer *)circlePathLayer
{
    CGFloat circleRadius = 20;
    CGRect circleFrame = CGRectMake(0, 0,2*circleRadius,2*circleRadius);
    circleFrame.origin.x = CGRectGetMidX(circlePathLayer.bounds) - CGRectGetMidX(circleFrame);
    circleFrame.origin.y = CGRectGetMidY(circlePathLayer.bounds) - CGRectGetMidY(circleFrame);
    return circleFrame;

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
