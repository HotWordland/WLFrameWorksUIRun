//
//  NetEngine.h
//  csc
//
//  Created by 情热大陆 on 12-11-13.
//
//

#define SEVER_ERROR_STRING @"服务器错误"
#import "NSDictionaryCategory.h"
#import "MKNetworkEngine.h"
#import "WLProgressHUD.h"
#import "ConfirNetEngineUrl.h"
@interface NetEngine : MKNetworkEngine
typedef void (^CurrencyResponseBlock)(id resData,BOOL isCache);
+(id)ShareWithbaseDomain:(NSString *)baseDomain basePath:(NSString *)basePath basePort:(NSString *)basePort;
+(void)cancel;
+(void) showAlert:(NSString *)theMsg;
+(id)newNetEngine;
///url全地址
+(MKNetworkOperation*) createHttpActionFullUrl:(NSString*) url
                             withParams:(NSDictionary*)params
                           onCompletion:(CurrencyResponseBlock) completionBlock
                                onError:(MKNKErrorBlock) errorBlock
                               useCache:(BOOL)usecache
                               withMask:(NSString *)maskName;
+(MKNetworkOperation*) createFileAction:(NSString*) url
                           onCompletion:(CurrencyResponseBlock) completionBlock
                                onError:(MKNKErrorBlock) errorBlock
                               withMask:(NSString *)maskName;
+(MKNetworkOperation*) createHttpAction:(NSString*) url
                           onCompletion:(CurrencyResponseBlock) completionBlock
                                onError:(MKNKErrorBlock) errorBlock
                               useCache:(BOOL)usecache
                               withMask:(NSString *)maskName;
+(MKNetworkOperation*) createHttpAction:(NSString*) url
                             withParams:(NSDictionary*)params
                           onCompletion:(CurrencyResponseBlock) completionBlock
                                onError:(MKNKErrorBlock) errorBlock
                               useCache:(BOOL)usecache
                               withMask:(NSString *)maskName;
+ (MKNetworkOperation*)imageAtURL:(NSString *)url size:(CGSize) size onCompletion:(MKNKImageBlock) imageFetchedBlock;
+ (MKNetworkOperation*)imageAtURL:(NSString *)url onCompletion:(MKNKImageBlock) imageFetchedBlock;

//自定义表单上传
+(MKNetworkOperation*)createFileAction:(NSString*) url
                            withParams:(NSDictionary *)params
                                  file:(NSString *)file
                          withFileType:(NSString *)fileType
                                forKey:(NSString *)fileKey
                          onCompletion:(CurrencyResponseBlock) completionBlock
                               onError:(MKNKErrorBlock) errorBlock
                              withMask:(NSString *)maskName;
///表单上传Data数据-(图片)
+(MKNetworkOperation*)createDataAction:(NSString*) url
                            withParams:(NSDictionary *)params
                                  data:(NSData *)data
                          withDataType:(NSString *)dataType
                                forKey:(NSString *)dataKey
                              fileName:(NSString *)thefileName
                          onCompletion:(CurrencyResponseBlock) completionBlock
                               onError:(MKNKErrorBlock) errorBlock
                              withMask:(NSString *)maskName;
///上传多文件
+(MKNetworkOperation*)createMultiDataAction:(NSString*) url
                                 withParams:(NSDictionary *)params
                                  multidata:(NSArray *)datas
                               withDataType:(NSArray *)dataTypes
                                     forKey:(NSArray *)dataKeys
                                   fileName:(NSArray *)thefileNames
                               onCompletion:(CurrencyResponseBlock) completionBlock
                                    onError:(MKNKErrorBlock) errorBlock
                                   withMask:(NSString *)maskName;
@end
