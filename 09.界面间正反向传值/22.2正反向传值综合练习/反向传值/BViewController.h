//
//  BViewController.h
//  反向传值
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BViewController;
@protocol BViewControllerDelegate <NSObject>

-(void)bViewController:(BViewController *)bvc clickbuttonToBackValue:(NSString *)backName;
@end

@interface BViewController : UIViewController
@property(nonatomic,copy)NSString *nickname;
@property(nonatomic,copy)NSString *name;

@property(nonatomic,weak)id<BViewControllerDelegate>delegate;
@end
