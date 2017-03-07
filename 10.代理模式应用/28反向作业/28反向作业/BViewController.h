//
//  BViewController.h
//  28反向作业
//
//  Created by YuanLiang on 4/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BViewController;
@protocol BViewControllerDeleate <NSObject>

-(void)BViewController:(BViewController *)bvc didPostbackLocation:(CGRect)postbackData andContentFromBVC:(NSString *)str;
//注意这里
@end
@interface BViewController : UIViewController
@property (nonatomic,weak) id<BViewControllerDeleate> delegate;
@end
