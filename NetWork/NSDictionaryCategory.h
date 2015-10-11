//
//  NSDictionaryCategory.h
//  cloud
//
//  Created by hetao on 11-4-19.
//  Copyright 2011年 oulin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDictionary (NSDictionaryCategory)
- (id)objectForJSONKey:(id)aKey;
- (id)valueForJSONKey:(NSString *)key;
- (id)valueForJSONKeys:(NSString *)key,...;
- (void)setObjects:(id)objects forKey:(id)aKey;
@end
