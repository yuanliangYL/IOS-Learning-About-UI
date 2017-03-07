//
//  Zomb.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Zomb.h"

@implementation Zomb

-(void)beginZombAnimation{
    UIImage *image = [UIImage imageNamed:self.zombName];
    
    float w = image.size.width / 8;
    NSMutableArray *zombArray = [NSMutableArray array];
    for (int i = 0;i < 8; i++)
    {
        CGImageRef subImage = CGImageCreateWithImageInRect(image.CGImage, CGRectMake(i * w, 0, w, image.size.height));
        [zombArray addObject:[UIImage imageWithCGImage:subImage]];
        CGImageRelease(subImage);
        
    }
    [self setAnimationImages:zombArray];
    [self setAnimationDuration:.8];
    [self startAnimating];
   
}

-(void)eatPlant:(Palnt *)plant{
    self.speed = 0;
    [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(eatAction:) userInfo:plant repeats:YES];
}

-(void)eatAction:(NSTimer *)timer{
    Palnt *plant = timer.userInfo;
    plant.HP --;
    if (plant.HP <= 0) {
        [plant removeFromSuperview];
        
        [plant.delegate.allPlant removeObject:plant];
    }
    self.speed = self.oldSpeed;
    
}
@end
