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
{
    CAShapeLayer *circleLayer;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *IM = [[UIImageView alloc]init];
//    [uiview setBackgroundColor:[UIColor redColor]];
    [IM setImage:[UIImage imageNamed:@"logo1"]];
    [self.view addSubview:IM];
    PREPCONSTRAINTS(IM);
    CONSTRAIN_SIZE(IM, 100, 100)
    [self.view addConstraints:@[CONSTRAINT_CENTERING_H(IM),CONSTRAINT_CENTERING_V(IM)]];
//    [WLCommon shakeView:uiview RepeatCount:4];
//    [WLCommon bounceView:IM];
    UIView *circleView = [UIView new];
    PREPCONSTRAINTS(circleView);
    CONSTRAIN_SIZE(circleView, 100, 100)
    [circleView setBackgroundColor:[UIColor whiteColor]];
//    [IM addSubview:circleView];
//    [IM addConstraints:@[CONSTRAINT_CENTERING_H(circleView),CONSTRAINT_CENTERING_V(circleView)]];

    circleLayer = [CAShapeLayer new];
    [circleLayer setFrame:CGRectMake(0, 0, 100, 100)];
    circleLayer.lineWidth = 10;
    circleLayer.fillColor = [UIColor clearColor].CGColor;
    circleLayer.strokeColor = [UIColor redColor].CGColor;
    circleLayer.strokeEnd = 1;
    CGRect circleFrame = [self getCircleFrameWithLayer:circleLayer];
    UIBezierPath *circlepath = [UIBezierPath bezierPathWithOvalInRect:circleFrame];
    [circleLayer setPath:circlepath.CGPath];
    [circleView.layer addSublayer:circleLayer];
    [circleView setBackgroundColor:[UIColor clearColor]];
    [circleLayer removeFromSuperlayer];
    [IM.layer setMask:circleLayer];
    [self performSelector:@selector(request) withObject:nil afterDelay:1];
    
    

    
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
    [NetEngine ShareWithbaseDomain:BaseDomain basePath:BasePath basePort:nil];
    [NetEngine createHttpActionFullUrl:@"https://www.baidu.com" withParams:nil onCompletion:^(id resData, BOOL isCache) {
        DLog(@"%@",resData);
    } onError:^(NSError *error) {
        
    } useCache:NO withMask:nil];


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
