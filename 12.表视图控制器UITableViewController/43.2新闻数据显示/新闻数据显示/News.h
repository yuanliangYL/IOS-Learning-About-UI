//
//  News.h
//  新闻数据显示
//
//  Created by YuanLiang on 5/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject
//新闻标题
@property(nonatomic,strong)NSString *title;
//新闻图片
@property(nonatomic,strong)NSString* newsImage;
//评论数
@property(nonatomic,assign)NSInteger commentCount;

//类方法获取新闻数据
+(NSArray *)allNews;
@end
