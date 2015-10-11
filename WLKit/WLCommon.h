//
//  WLCommon.h
//  WLFrameWorksUIRun
//
//  Created by Ronaldinho on 15/6/10.
//  Copyright (c) 2015年 HotWordLand. All rights reserved.
//

#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define IS_IPHONE6_6PLUS [DeviceJudge currentResolution] ==iPhone6HiRes||[DeviceJudge currentResolution]==iPhone6PlusHiRes
#define IS_IPHONE6 [DeviceJudge currentResolution] ==iPhone6HiRes
#define IS_IPHONE6PLUS [DeviceJudge currentResolution] ==iPhone6PlusHiRes
#define SCREEN_RECT [[UIScreen mainScreen] bounds];
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds] .size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds] .size.height
#define MAIN_STROYBOARD [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ConstraintPack.h"
#import "SBJSON.h"
#import "NSString+SBJSON.h"
@interface WLCommon : NSObject
///App Group 路径
+ (NSURL *)localDocumentsDirectory;
///label字体长度 - 没有富文本逻辑时
+ (CGFloat)widthForText:(NSString *)text height:(CGFloat)height font:(UIFont *)thefont;
///label字体高度 - 没有富文本逻辑时
+ (CGFloat)heightForText:(NSString *)text width:(CGFloat)width font:(UIFont *)thefont;
///摇动
+(void)shakeView:(UIView *)view RepeatCount:(int)count;
///Bounce
+(void)bounceView:(UIView *)view;
@end
