//
//  WeiboParser.m
//  XML解析--Dom
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "WeiboParser.h"
#import "TBXML.h"
#import "WeiBO.h"
@implementation WeiboParser
+(NSArray *)parserWeiboWithData:(NSData *)data{
    NSMutableArray *allWeibo = [NSMutableArray array];
//    创建TBXML解析对象
    TBXML * tbXML = [TBXML newTBXMLWithXMLData:data error:nil];
//    获取解析数据中的根元素
    TBXMLElement *weibosElement = tbXML.rootXMLElement;
//    获取要解析的第一个微博对像元素
    TBXMLElement *weiboEle = [TBXML childElementNamed:@"weibo" parentElement:weibosElement];
//    遍历每一个微博元素对象
    while (weiboEle) {
//        创建微博对象
        WeiBO *w = [WeiBO new];
//        获取元素属性
        w.weiboID = [TBXML valueOfAttributeNamed:@"weiboid" forElement:weiboEle];
        
//     得到微博元素下面的每一元素
        TBXMLElement *name = [TBXML childElementNamed:@"name" parentElement:weiboEle];
        TBXMLElement *text = [TBXML childElementNamed:@"text" parentElement:weiboEle];
        TBXMLElement *img = [TBXML childElementNamed:@"img" parentElement:weiboEle];
        TBXMLElement *time = [TBXML childElementNamed:@"time" parentElement:weiboEle];
        
//  取出元素的文本
        w.name  = [TBXML textForElement:name];
        w.text = [TBXML textForElement:text];
        w.img = [TBXML textForElement:img];
        w.time = [TBXML textForElement: time];
        
        [allWeibo addObject:w];
        
//     获取兄弟元素
        weiboEle = [TBXML nextSiblingNamed:@"weibo" searchFromElement:weiboEle];
    }
    
    return allWeibo;
}
@end
