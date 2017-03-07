//
//  Palnt.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Palnt.h"

@implementation Palnt

-(void)beginAnimation{
    UIImage *plantImage = [UIImage imageNamed:self.imageName];
    
    float w = plantImage.size.width /self.imageCount;
    NSMutableArray * allPlant = [NSMutableArray array];
    
    for (int i = 0; i < self.imageCount; i++) {
        
        CGImageRef subImage = CGImageCreateWithImageInRect(plantImage.CGImage,CGRectMake(i * w, 0, w, plantImage.size.height));
        UIImage *image = [UIImage imageWithCGImage:subImage];
        [allPlant addObject:image];
        CGImageRelease(subImage);
    }
    [self setAnimationImages:allPlant];
    [self setAnimationDuration:.5];
    [self startAnimating];
    
}
-(void)beginFire{
    
}
@end
