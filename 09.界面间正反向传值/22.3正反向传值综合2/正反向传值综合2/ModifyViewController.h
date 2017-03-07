//
//  ModifyViewController.h
//  正反向传值综合2
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ModifyViewController;
@protocol ModifyViewControllerDelegate <NSObject>

-(void)modifyViewController:(ModifyViewController *)mvc clickToSaveData:(NSString *)backValue;
@end
@interface ModifyViewController : UIViewController
@property(nonatomic,weak)id<ModifyViewControllerDelegate>delegate;


@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *textFieldContent;
@end
