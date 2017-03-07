//
//  MusicCell.m
//  Demo4_动态布局
//
//  Created by tarena on 16/6/28.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MusicCell.h"

@interface MusicCell ()

//高清左边约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *hqLeftConstraint;
//歌唱家左边约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *atristLeftConstaint;

@end



@implementation MusicCell

//更新约束
-(void)updateConstraints {
    [super updateConstraints];
    
    CGFloat x = 10;
    
    if (!self.downloadedImageView.hidden) {
        x += 20;
    }
    if (!self.hqImageView.hidden) {
        self.hqLeftConstraint.constant = x;
        
        x += 20;
    }
    self.atristLeftConstaint.constant = x;
   
    
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
