//
//  BViewController.h
//  07反向传值
//
//  Created by YuanLiang on 4/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义协议（目标：约束代理方）

@class BViewController;

@protocol BViewControllerDelegate <NSObject>

-(void)bViewController:(BViewController *)bvc didInputstr:(NSString *)str;

@end


@interface BViewController : UIViewController
//公开一个属性,用于保存A的引用，应放在.h文件中
//只要持有对方的应用，就能发消息
//@property(nonatomic,weak) AViewController * backReference;
@property(nonatomic,weak) id<BViewControllerDelegate>delegate;
@end


