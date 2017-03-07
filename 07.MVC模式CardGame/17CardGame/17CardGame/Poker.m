//
//  Poker.m
//  17CardGame
//
//  Created by YuanLiang on 4/15/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Poker.h"
#import "Card.h"
@implementation Poker
/*9*/
-(instancetype)init{
    self = [super init];
    if(self)
    {
/*10*/
        self.allCards = [NSMutableArray arrayWithCapacity:52];
/*11*/
        NSArray *allSuit = [Card allSuits];
        NSArray *allRank = [Card allRanks];
        
        for (NSString *suit in allSuit) {
            for (NSString *rank in allRank) {
                Card *card = [[Card alloc]initWithSuit:suit andRank:rank];
/*12*/
                [self.allCards addObject:card];
            }
        }
    }
    return self;
}
@end
