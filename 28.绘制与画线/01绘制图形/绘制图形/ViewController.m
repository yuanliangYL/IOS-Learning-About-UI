//
//  ViewController.m
//  绘制图形
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"
#import "DrawRoundView.h"
#import "DrawArcView.h"
#import "DrawImageView.h"
#import "DrawCharacterView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *drawView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)clickToshowDrawing:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
        {DrawView *dv = [[DrawView alloc]initWithFrame:self.drawView.frame];
            [self.drawView addSubview:dv];
        }
            break;
        case 1:
        {
            DrawRoundView *arv = [[DrawRoundView alloc]initWithFrame:self.drawView.frame];
            [self.drawView addSubview:arv];
        }
            break;
        case 2:
        {  DrawArcView *dac = [[DrawArcView alloc]initWithFrame:self.drawView.frame];
            [self.drawView addSubview:dac];
        }
            break;
        case 3:
        {
            DrawImageView *dac = [[DrawImageView alloc]initWithFrame:self.drawView.frame];
            [self.drawView addSubview:dac];
        }
            break;
        case 4:
        {
           DrawCharacterView *dac = [[DrawCharacterView alloc]initWithFrame:self.drawView.frame];
            [self.drawView addSubview:dac];
        }
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
