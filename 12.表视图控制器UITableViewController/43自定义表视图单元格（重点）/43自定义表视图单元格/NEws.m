//
//  NEws.m
//  43自定义表视图单元格
//
//  Created by YuanLiang on 5/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "NEws.h"

@implementation NEws
+(NSArray *)demoData
{
    NEws *n1 = [[NEws alloc]init];
    n1.imageName = @"n1.png";
    n1.title = @"美呆了！新版《古墓丽影》维坎德定妆照曝光 ";
    n1.commentNumber = 2068;
    
    NEws *n2 = [[NEws alloc]init];
    n2.imageName = @"n2.png";
    n2.title = @"脑洞大开，每次看见这些英雄联盟ID都可以笑30分钟  ";
    n2.commentNumber = 68;
    
    NEws *n3 = [[NEws alloc]init];
    n3.imageName = @"n3.png";
    n3.title = @"加拿大史上最恐怖灾难：10万人逃离　似好莱坞大片 ";
    n3.commentNumber = 208;
    
    NEws *n4 = [[NEws alloc]init];
    n4.imageName = @"n4.png";
    n4.title = @"台湾贴纸护照支持者要求新版护照封面删去China ";
    n4.commentNumber = 12068;
    
    NEws *n5 = [[NEws alloc]init];
    n5.imageName = @"n5.png";
    n5.title = @"少女穿透明雨衣坐地铁 里面仅穿红色内裤 ";
    n5.commentNumber = 468;
    
    NEws *n6 = [[NEws alloc]init];
    n6.imageName = @"n6.png";
    n6.title = @"有图有真相 绝密UFO照片公开证实外星人存在 ";
    n6.commentNumber = 122068;
    
    NEws *n7 = [[NEws alloc]init];
    n7.imageName = @"n7.png";
    n7.title = @"120迈等于时速120公里？开什么国际玩笑？！";
    n7.commentNumber = 68;
    
    NEws *n8 = [[NEws alloc]init];
    n8.imageName = @"n8.png";
    n8.title = @"LOL盖伦4狂徒1振奋：每秒回血500多！泉水都打不动";
    n8.commentNumber = 2068;
    
    return @[n1,n2,n3,n4,n5,n6,n7,n8];
}

@end
