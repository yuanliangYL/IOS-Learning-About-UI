//
//  AddCityViewController.h
//  44表视图的编辑模式
//
//  Created by YuanLiang on 5/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CitiesInfo.h"
@class AddCityViewController;
@protocol AddCityViewControllerDelegate <NSObject>

-(void)addCityViewController:(AddCityViewController *)addvc didInputCityInfo:(CitiesInfo *)city;

@end

@interface AddCityViewController : UIViewController
@property(nonatomic,weak)id<AddCityViewControllerDelegate> delegate;
@end
