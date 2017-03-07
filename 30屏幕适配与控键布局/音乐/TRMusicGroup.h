//
//  TRMusicGroup.h
//  TMusic
//
//  Copyright (c) 2014年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMusic.h"


typedef NS_ENUM(NSInteger, TRMusicGroupState) {
    TRMusicGroupStateNormal,	
    TRMusicGroupStateDownloading,		
    TRMusicGroupStateDownloaded
};

@interface TRMusicGroup : NSObject

@property (nonatomic, copy) NSString * name;

@property (nonatomic, strong) NSArray * musics;

@property (nonatomic) TRMusicGroupState state;

+ (NSArray *) fakeData;

@end
