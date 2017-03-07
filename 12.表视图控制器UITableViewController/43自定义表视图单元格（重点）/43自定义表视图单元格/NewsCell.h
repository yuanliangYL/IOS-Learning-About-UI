//
//  NewsCell.h
//  43自定义表视图单元格
//
//  Created by YuanLiang on 5/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NEws.h"
@interface NewsCell : UITableViewCell
//公开属性,存储一个对应的一条新闻
@property(nonatomic,strong)NEws *news;

@end
