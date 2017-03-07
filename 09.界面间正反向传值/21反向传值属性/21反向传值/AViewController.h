//
//  AViewController.h
//  21反向传值
//
//  Created by YuanLiang on 4/19/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AViewController : UIViewController
//a要公开一个能够接受回传数据的属性
@property(nonatomic,strong)NSString *receiveValue;
@end
