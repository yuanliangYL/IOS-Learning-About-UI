//
//  InputViewController.h
//  41增加数据
//
//  Created by YuanLiang on 5/5/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityTableViewController.h"
#import "CitiesInfo.h"
@class InputViewController;
@protocol InputViewControllerDelegate <NSObject>

-(void)inputViewController:(InputViewController *)vc didInpitNewCity:(CitiesInfo *)city;

@end

@interface InputViewController : UIViewController
@property(nonatomic,weak) id<InputViewControllerDelegate> delegate;
@end
