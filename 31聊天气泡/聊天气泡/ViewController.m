//
//  ViewController.m
//  聊天气泡
//
//  Created by YuanLiang on 7/6/16.
//  Copyright © 2016 YuanLiang. All rights reserved.
//

#import "ViewController.h"
#import "UIViewExt.h"
#import "YYTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 0, 0)];
    
    UIImage *image = [UIImage imageNamed:@"Screen Shot 2016-07-06 at 11.51.58.png"];
    
    iv.image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(15, 30, 22, 15) resizingMode:UIImageResizingModeStretch];
    
    
    YYTextView *tv = [[YYTextView alloc]initWithFrame:CGRectMake(10, 10, 200, 0)];
    [iv addSubview:tv];
    [self.view addSubview:iv];
    
    
    tv.text = @"hgealjgjagpoj,ag;djpoeasl;ldkfagadlgrgjagjladjjlfajlfjlsdajfkljdasgjladsop4jlgjajl;dsoguijklancvx,zvjgkfuwusfaklurwuha;";
    
    tv.size = tv.textLayout.textBoundingSize;
    iv.size = CGSizeMake(tv.size.width+20, tv.size.height+10+20);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
