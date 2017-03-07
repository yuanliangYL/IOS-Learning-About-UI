//
//  Palnt.h
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface Palnt : UIImageView
@property(nonatomic ,strong)NSString *imageName;
@property(nonatomic,assign)NSInteger imageCount;
@property(nonatomic,weak)ViewController *delegate;
@property(nonatomic,assign)NSInteger HP;
@property(nonatomic,assign)NSInteger costCount;
-(void)beginAnimation;
-(void)beginFire;
@end
