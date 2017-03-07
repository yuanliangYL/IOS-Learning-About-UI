//
//  Card.m
//  17CardGame
//
//  Created by YuanLiang on 4/15/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Card.h"

@implementation Card
/*5*/
-(instancetype)initWithSuit:(NSString *)suit andRank:(NSString *)rank
{
    self = [super init];
    if (self){
        self.suit = suit;
        self.rank = rank;
        self.faceUp = NO;
        self.matched = NO;
    }
    return self;
}

/*6*/
+(NSArray *)allSuits
{
//    NSArray * array = [NSArray arrayWithObjects:@"♠️",@"❤️",@"♣️",@"♦️", nil];
//    return array;
    return @[@"♠️",@"❤️",@"♣️",@"♦️"];
}
/*7*/
+(NSArray *)allRanks
{
    return @[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

-(void)setSuit:(NSString *)suit
{
    if ([[Card allSuits] containsObject:suit])
    {
        _suit = suit;
    }
    
}

-(void)setRank:(NSString *)rank
{
    if ([[Card allRanks] containsObject:rank])
    {
        _rank = rank;
    }
}

-(NSString *)cardInfo
{
    return [self.suit stringByAppendingString:self.rank];
}
@end
