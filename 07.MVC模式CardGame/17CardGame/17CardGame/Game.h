//
//  Game.h
//  17CardGame
//
//  Created by YuanLiang on 4/15/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Poker.h"
@interface Game : NSObject
/*13*/@property (nonatomic,strong) NSMutableArray *allRondomCards;

@property (nonatomic) NSInteger score;


/*14*///???????
-(instancetype)initWithPoker:(Poker *)poker andNumber:(NSInteger)num;


-(void)tagCardAtIndex:(NSInteger) index;
@end
