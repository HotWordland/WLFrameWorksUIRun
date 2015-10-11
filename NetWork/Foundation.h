//
//  Foundation.h
//  beta1
//
//  Created by Zhou Zhi on 13-9-12.
//  Copyright (c) 2013年  All rights reserved.
//
#ifdef DEBUG
#   define DLog(fmt, ...) {NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);}
#   define ELog(err) {if(err) DLog(@"%@", err)}
#else
#   define DLog(...)
#   define ELog(err)
#endif

