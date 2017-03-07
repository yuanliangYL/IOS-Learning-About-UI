//
//  NewsTableViewCell.m
//  新闻数据显示
//
//  Created by YuanLiang on 5/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "NewsTableViewCell.h"

@interface NewsTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *comment;

@end

@implementation NewsTableViewCell
+(instancetype)cellForTableView:(UITableView *)tableView{
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCell"];
    if (!cell) {
//        在有XIB的情况下，通过xib创键cell
        cell = [[NSBundle mainBundle]loadNibNamed:@"NewsTableViewCell" owner:nil options:nil].lastObject;
    }
    return cell;
}

-(void)setNews:(News *)news{
    _news = news;
    self.image.image =[UIImage imageNamed: _news.newsImage];
    self.title.text = _news.title;
    self.comment.text = [NSString stringWithFormat:@"%ld" ,_news.commentCount];
}

//通过XIB创建并加载cell的时候，会自动调用，如果有一些初始化工作要完成，可以在该方法中进行
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
