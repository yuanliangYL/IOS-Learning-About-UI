//
//  NewsCell.m
//  43自定义表视图单元格
//
//  Created by YuanLiang on 5/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "NewsCell.h"

@interface NewsCell ()
@property (weak, nonatomic) IBOutlet UIImageView *newsImageView;
@property (weak, nonatomic) IBOutlet UILabel *newsLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;

@end

@implementation NewsCell
//只要self.news属性中，有数据了
//立刻将新闻的各个数据显示到对应的子控件上
//对于符合“一赋值， 就。。。。。”这样的句式
//此时机对应的就是属性的set方法
//所以只需要重写属性的set方法，保证原有的赋值动作执行
//在显示
-(void)setNews:(NEws *)news
{
    _news = news;
    
    self.newsImageView.image = [UIImage imageNamed:news.imageName];
    self.newsLabel.text = news.title;
    self.commentLabel.text = [NSString stringWithFormat:@"%lu",news.commentNumber];
}


@end
