//
//  MusicCell.h
//  Demo4_动态布局
//
//  Created by tarena on 16/6/28.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicCell : UITableViewCell
//歌曲名册
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
//歌曲时间
@property (weak, nonatomic) IBOutlet UILabel *durationLabel;
//歌唱家 专辑名
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UIImageView *downloadedImageView;
@property (weak, nonatomic) IBOutlet UIImageView *hqImageView;





@end










