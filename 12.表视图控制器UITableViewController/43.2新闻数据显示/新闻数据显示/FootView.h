//
//  FootView.h
//  新闻数据显示
//
//  Created by YuanLiang on 5/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FootView;
@protocol FootViewDelegate <NSObject>

-(void)loadData:(FootView *)footView;

@end
@interface FootView : UIView
@property(nonatomic,weak)id<FootViewDelegate>degelate;

-(void)loadFinish;
@end
