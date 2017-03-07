//
//  AddViewController.h
//  委托添加数据
//
//  Created by YuanLiang on 5/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AddViewController;
@protocol AddViewControllerDelegate <NSObject>

-(void)AddViewController:(AddViewController *)avc didInputCityName:(NSString *)name andPopulation:(NSString *)population;

@end
@interface AddViewController : UIViewController
@property(nonatomic,weak)id<AddViewControllerDelegate>delegate;
@end
