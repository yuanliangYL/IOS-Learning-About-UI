//
//  ViewController.m
//  动画相册
//
//  Created by YuanLiang on 6/9/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "PhotoView.h"
@interface ViewController ()
@property(nonatomic,strong)NSMutableArray *pvs;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pvs = [NSMutableArray array];

    for (int i = 0; i <= 12; i++) {
        PhotoView *pv = [[PhotoView alloc]initWithI:i];
        pv.iv.image = [UIImage imageNamed:[NSString stringWithFormat:@"%.02d",i]];
        [self.view addSubview:pv];
        
        [self.pvs addObject:pv];
    }
    [NSTimer  scheduledTimerWithTimeInterval:1/70.0 target:self selector:@selector(moveAction) userInfo:nil repeats:YES];
}

-(void)moveAction{
    for (PhotoView *pv in self.pvs) {
//     移动
        pv.center = CGPointMake(pv.center.x + pv.speed, pv.center.y);
        
//    移出屏幕后回到最左侧
        if (pv.center.x > 667 + pv.bounds.size.width * .5) {
            CGRect frame = pv.frame;
            frame.origin.x = - pv.frame.origin.x;
//    int类型强制转换
            frame.origin.y = arc4random() %(int)(667 - frame.size.height);
            pv.frame = frame;
        }
    }
}
@end
