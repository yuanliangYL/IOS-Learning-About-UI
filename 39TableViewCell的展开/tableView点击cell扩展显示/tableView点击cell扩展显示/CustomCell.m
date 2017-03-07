//
//  CustomCell.m
//  UITableViewCellExpansion
//
//  Created by 谭启宏 on 15/12/10.
//  Copyright © 2015年 谭启宏. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.masksToBounds = YES;
        self.textLabel.text = @"这是原本的cell";
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

@end
