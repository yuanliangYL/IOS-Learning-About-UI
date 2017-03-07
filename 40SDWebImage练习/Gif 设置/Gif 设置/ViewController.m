//
//  ViewController.m
//  Gif 设置
//
//  Created by YuanLiang on 8/28/16.
//  Copyright © 2016 YuanLiang. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+GIF.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageview;

@end

@implementation ViewController



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
  
       UIImage * image = [UIImage sd_animatedGIFWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://c.hiphotos.baidu.com/zhidao/pic/item/bba1cd11728b4710c3758173c7cec3fdfc032332.jpg"]]];
    [image sd_animatedImageByScalingAndCroppingToSize:CGSizeMake(300, 400)];
    self.imageview.image = image;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
