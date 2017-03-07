//
//  WeiboParser.h
//  XML解析--Dom
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeiboParser : NSObject
+(NSArray *)parserWeiboWithData:(NSData *)data;
@end
