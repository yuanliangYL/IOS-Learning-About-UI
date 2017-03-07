//
//  TRMusic.h
//  TMusic
//
//  Copyright (c) 2014年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRMusic : NSObject

@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * album;
@property (nonatomic, copy) NSString * artist;

@property (nonatomic) NSTimeInterval duration;

@property (nonatomic) BOOL highQuality;
@property (nonatomic) BOOL downloaded;

@end
