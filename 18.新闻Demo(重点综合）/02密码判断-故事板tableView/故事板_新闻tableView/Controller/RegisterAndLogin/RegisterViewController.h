//
//  RegisterViewController.h
//  故事板_新闻tableView
//
//  Created by YuanLiang on 5/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserRegister.h"

@class  RegisterViewController;
@protocol RegisterDelegate <NSObject>
//设置代理方法，当注册完成时，把委托方和注册数据对象传到代理界面中去：实现反向传值
-(void)registerViewController:(RegisterViewController *)registerVC didfinishRegisteUserInfo:(UserRegister *)userRegister;
@end

@interface RegisterViewController : UIViewController

@property(nonatomic,weak)id<RegisterDelegate>delegate;
@end
