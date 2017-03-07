//
//  ChoseSignViewController.h
//  25星座运程Demo
//
//  Created by YuanLiang on 4/21/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ChoseSignViewController;
@protocol ChoseSignViewControllerDelegate <NSObject>

-(void)choseSignViewController:(ChoseSignViewController *)vc didFinishChoseSignWithInfo:(NSString *)info;

@end

@interface ChoseSignViewController : UIViewController
@property(nonatomic,weak)id <ChoseSignViewControllerDelegate>delegate;
@end
