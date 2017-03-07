//
//  AViewController.h
//  07反向传值
//
//  Created by YuanLiang on 4/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AViewController : UIViewController
//@property (nonatomic,strong)NSString *backValue;

//公开一个方法，负责接收传入的数据，并显示
-(void)didReceiveBackValue:(NSString *)str;

@end
