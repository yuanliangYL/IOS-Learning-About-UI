//
//  Zomb.h
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Palnt.h"

@interface Zomb : Palnt
@property(nonatomic,strong)NSString *zombName;
@property(nonatomic,assign)float speed;
@property(nonatomic,assign)float life;
@property(nonatomic,assign)float oldSpeed;
-(void)beginZombAnimation;
-(void)eatPlant:(Palnt *)plant;
@end
