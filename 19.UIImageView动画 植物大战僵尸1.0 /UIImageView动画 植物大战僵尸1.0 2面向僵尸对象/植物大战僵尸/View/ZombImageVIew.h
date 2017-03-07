//
//  ZombImageVIew.h
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZombImageVIew : UIImageView
@property (nonatomic, strong)NSString *zombName;
@property(nonatomic,assign)NSInteger imageCount;
-(void)beginAnimation;
@end
