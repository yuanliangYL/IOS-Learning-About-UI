//
//  NEws.h
//  43自定义表视图单元格
//
//  Created by YuanLiang on 5/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
//新闻类：包含新闻图片，标题，评论数
@interface NEws : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *imageName;
@property(nonatomic,assign)NSInteger commentNumber;
+(NSArray *)demoData;
@end
