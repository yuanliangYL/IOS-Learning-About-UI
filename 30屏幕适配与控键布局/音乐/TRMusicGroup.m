//
//  TRMusicGroup.m
//  TMusic
//
//  Copyright (c) 2014年 Tarena. All rights reserved.
//

#import "TRMusicGroup.h"

@implementation TRMusicGroup

+ (NSArray *) fakeData
{
    NSMutableArray * musics = nil;
    TRMusic * music = nil;
    
    musics = [NSMutableArray array];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Burn";
    music.album         = @"Burn - Single";
    music.artist        = @"Ellie Goulding";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Summertime Sadness (Cedric Gervais Remix)";
    music.album         = @"Summertime Sadness (Cedric Gervais Remix) - Single";
    music.artist        = @"Lana Del Rey";
    music.duration      = [self durationWithMinutes:6 andSeconds:52];
    music.downloaded    = YES;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Spectrum";
    music.album         = @"Clarity";
    music.artist        = @"Zedd";
    music.duration      = [self durationWithMinutes:4 andSeconds:3];
    music.downloaded    = YES;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"It's Time";
    music.album         = @"It’s Time";
    music.artist        = @"Imagine Dragons";
    music.duration      = [self durationWithMinutes:4 andSeconds:0];
    music.downloaded    = NO;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Dancing in The Moonlight";
    music.album         = @"Dancing In The Moonlight: The Best Of Toploader";
    music.artist        = @"Toploader";
    music.duration      = [self durationWithMinutes:3 andSeconds:53];
    music.downloaded    = YES;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Thinking About You (feat. Ayah Marar)";
    music.album         = @"18 Months (Deluxe Edition)";
    music.artist        = @"Calvin Harris";
    music.duration      = [self durationWithMinutes:4 andSeconds:8];
    music.downloaded    = YES;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"You Make Me (feat. Salem Al Fakir)";
    music.album         = @"True";
    music.artist        = @"Avicii";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Safe and Sound";
    music.album         = @"Capital Cities EP";
    music.artist        = @"Capital Cities";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Reaching Out";
    music.album         = @"Welcome Reality (Deluxe Version)";
    music.artist        = @"nero";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Recover";
    music.album         = @"Recover - EP";
    music.artist        = @"CHVRCHES";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Hold On, We're Going Home (feat. Majid Jordan)";
    music.album         = @"Hold On, We're Going Home (feat. Majid Jordan) - Single";
    music.artist        = @"Drake";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"The Mother We Share";
    music.album         = @"The Mother We Share - Single";
    music.artist        = @"CHVRCHES";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Promises";
    music.album         = @"nero";
    music.artist        = @"Promises - EP";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Alone Together";
    music.album         = @"Save Rock and Roll";
    music.artist        = @"Fall Out Boy";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Reload (Radio Edit)";
    music.album         = @"Reload (Radio Edit) - Single";
    music.artist        = @"Sebastian Ingrosso";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"I Love It (feat. Charli XCX)";
    music.album         = @"Iconic";
    music.artist        = @"Icona Pop";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Feel the Love";
    music.album         = @"Feel the Love (feat. John Newman) [Remixes] - EP";
    music.artist        = @"Rudimental";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Goin' Crazy (feat. Robbie Williams)";
    music.album         = @"Goin' Crazy (feat. Robbie Williams) - Single";
    music.artist        = @"Dizzee Rascal";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Still Into You";
    music.album         = @"Paramore";
    music.artist        = @"Paramore";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Heart Attack";
    music.album         = @"Demi";
    music.artist        = @"Demi Lovato";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Explosions";
    music.album         = @"Halcyon (Deluxe Edition)";
    music.artist        = @"Ellie Goulding";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"I Need Your Love (feat. Ellie Goulding)";
    music.album         = @"I Need Your Love";
    music.artist        = @"Calvin Harris";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Starry Eyed";
    music.album         = @"Bright Lights";
    music.artist        = @"Ellie Goulding";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Lights (Single Version)";
    music.album         = @"Bright Lights";
    music.artist        = @"Ellie Goulding";
    music.duration      = [self durationWithMinutes:3 andSeconds:51];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"Who's That Chick?";
    music.album         = @"Who's That Chick - Single";
    music.artist        = @"David Guetta";
    music.duration      = [self durationWithMinutes:2 andSeconds:47];
    music.downloaded    = YES;
    music.highQuality   = NO;
    [musics addObject:music];
    
    TRMusicGroup * g1 = [[TRMusicGroup alloc] init];
    g1.name = @"国外单曲";
    g1.musics = [musics copy];
    g1.state = TRMusicGroupStateDownloaded;
    
    
    
    musics = [NSMutableArray array];
    
    music = [[TRMusic alloc] init];
    music.name          = @"你有本事抢男人";
    music.album         = @"好大的胆子";
    music.artist        = @"雪姨";
    music.duration      = [self durationWithMinutes:3 andSeconds:18];
    music.downloaded    = NO;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"喂鸡";
    music.album         = @"六十年代生人";
    music.artist        = @"刘欢";
    music.duration      = [self durationWithMinutes:3 andSeconds:41];
    music.downloaded    = NO;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"忐忑";
    music.album         = @"自由鸟";
    music.artist        = @"龚琳娜";
    music.duration      = [self durationWithMinutes:4 andSeconds:03];
    music.downloaded    = NO;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"爱情买卖";
    music.album         = @"我们的爱我不放手";
    music.artist        = @"慕容晓晓";
    music.duration      = [self durationWithMinutes:3 andSeconds:31];
    music.downloaded    = NO;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"法海你不懂爱";
    music.album         = @"法海你不懂爱 - 单曲";
    music.artist        = @"龚琳娜";
    music.duration      = [self durationWithMinutes:3 andSeconds:33];
    music.downloaded    = NO;
    music.highQuality   = NO;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"最炫民族风";
    music.album         = @"我们的爱我不放手";
    music.artist        = @"凤凰传奇";
    music.duration      = [self durationWithMinutes:4 andSeconds:46];
    music.downloaded    = NO;
    music.highQuality   = YES;
    [musics addObject:music];
    
    music = [[TRMusic alloc] init];
    music.name          = @"金箍棒";
    music.album         = @"金箍棒 - 单曲";
    music.artist        = @"龚琳娜";
    music.duration      = [self durationWithMinutes:2 andSeconds:52];
    music.downloaded    = NO;
    music.highQuality   = NO;
    [musics addObject:music];
    
    
    TRMusicGroup * g2 = [[TRMusicGroup alloc] init];
    g2.name = @"国内神曲";
    g2.musics = [musics copy];
    g2.state = TRMusicGroupStateNormal;
    
    TRMusicGroup * g3 = [[TRMusicGroup alloc] init];
    g3.name = @"Calvin Harris 专辑";
    g3.musics = @[];
    g3.state = TRMusicGroupStateNormal;
    
    TRMusicGroup * g4 = [[TRMusicGroup alloc] init];
    g4.name = @"Ellie Gounding 专辑";
    g4.musics = @[];
    g4.state = TRMusicGroupStateNormal;
    
    return @[g1, g2, g3, g4];
}

+ (NSTimeInterval) durationWithMinutes:(int)minutes andSeconds:(int)seconds
{
    return minutes * 60 + seconds;
}

@end
