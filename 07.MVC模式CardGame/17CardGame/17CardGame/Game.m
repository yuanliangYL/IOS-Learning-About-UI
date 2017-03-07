//
//  Game.m
//  17CardGame
//
//  Created by YuanLiang on 4/15/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Game.h"
#import "Card.h"
@implementation Game
/*15*/
-(instancetype)initWithPoker:(Poker *)poker andNumber:(NSInteger)num
{
    self = [super init];
    if (self)
        self.score = 0;
    {
        self.allRondomCards = [NSMutableArray array];
/*16*/
        for (NSInteger i = 0; i < num; i++)
         {
             NSInteger randomIndex = arc4random() % poker.allCards.count;
//         0~21亿随机数生成方法：   arc4random()
//         在什么范围，就除以最大值取余即：% max  --->  0 ~（max—1）
             Card * card = poker.allCards[randomIndex];
//           poker.allCards[???]
             [ self.allRondomCards addObject:card];
/*17*/           
             [poker.allCards removeObjectAtIndex:randomIndex];
        }
    }
    return  self;
}

-(void)tagCardAtIndex:(NSInteger)index
{
    Card *selectedCard = self.allRondomCards[index];
    if (selectedCard.isFaceOn) {
        selectedCard.faceUp = NO;
    }else{
        selectedCard.faceUp = YES;
        for (NSInteger i = 0; i < self.allRondomCards.count; i++)
        {
            if ( i != index) {
                Card *otherCard = self.allRondomCards[i];
                if (otherCard.isFaceOn && !otherCard.isMatched) {
                    if ([selectedCard.suit isEqualToString:otherCard.suit] || [selectedCard.rank isEqualToString:otherCard.rank]) {
                        selectedCard.matched = YES;
                        otherCard.matched = YES;
                        self.score += 1;
                    }else{
                        otherCard.faceUp = NO;
                    }
                }
            }
        }
    }
}

@end
