//
//  NewsTableViewCell.h
//  新闻数据显示
//
//  Created by YuanLiang on 5/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "News.h"
@interface NewsTableViewCell : UITableViewCell
@property(nonatomic,strong)News *news;

+(instancetype)cellForTableView:(UITableView *)tableView;

@end
