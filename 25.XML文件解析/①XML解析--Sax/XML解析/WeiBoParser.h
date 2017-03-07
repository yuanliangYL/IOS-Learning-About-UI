//
//  WeiBoParser.h
//  XML解析
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeiBo.h"
@interface WeiBoParser : NSObject<NSXMLParserDelegate>//遵守协议实现解析方法
@property(nonatomic,strong)NSMutableArray *allWeibo;
@property(nonatomic,strong)WeiBo *currentWeiBo;
@property(nonatomic,strong)NSString *string;

-(NSArray *)parserWeiboWithData:(NSData *)data;

@end
