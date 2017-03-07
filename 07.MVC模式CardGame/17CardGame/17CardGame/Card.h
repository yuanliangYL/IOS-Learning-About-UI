//
//  Card.h
//  17CardGame
//
//  Created by YuanLiang on 4/15/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
/*3*/
@property (nonatomic,strong) NSString *suit;
@property (nonatomic,strong) NSString *rank;
@property (nonatomic,getter=isFaceOn) BOOL faceUp;
@property (nonatomic,getter=isMatched) BOOL matched;


@property(nonatomic ,strong,readonly) NSString *cardInfo;
-(instancetype)initWithSuit:(NSString *)suit andRank:(NSString *)rank;
/*4*/
+(NSArray *)allSuits;
+(NSArray *)allRanks;
@end
