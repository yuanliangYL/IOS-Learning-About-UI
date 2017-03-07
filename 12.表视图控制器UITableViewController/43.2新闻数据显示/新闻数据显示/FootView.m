//
//  FootView.m
//  新闻数据显示
//
//  Created by YuanLiang on 5/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "FootView.h"
@interface FootView()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIView *loadView;

@end

@implementation FootView
- (IBAction)buttonClick:(UIButton *)sender {
//    如果点了加载的button，button隐藏，加载的view显示
    self.button.hidden = YES;
    self.loadView.hidden= NO;
    [self.degelate loadData:self];
}
-(void)loadFinish {
    self.button.hidden = NO;
    self.loadView.hidden = YES;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
