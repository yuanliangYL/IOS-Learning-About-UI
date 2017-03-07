//
//  CsutomExpansionCell.m
//  UITableViewCellExpansion
//
//  Created by 谭启宏 on 15/12/10.
//  Copyright © 2015年 谭启宏. All rights reserved.
//

#import "CsutomExpansionCell.h"

@implementation CsutomExpansionCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        self.layer.masksToBounds = YES;
        self.textLabel.text = @"这是展开的cell";
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

@end
