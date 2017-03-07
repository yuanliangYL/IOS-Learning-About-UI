//
//  ViewController.m
//  面向对象绘制多条指向
//
//  Created by YuanLiang on 6/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *WriteView;

@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UIView *preView;

@property(nonatomic,strong) DrawView *dv ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self .dv = [[DrawView alloc]initWithFrame:self.WriteView.frame];
    [self.WriteView addSubview:self.dv];
    
//    设置加载View是的默认绘图颜色和线宽
    self.dv.currentWeith =1;
    self.dv.currentColor = self.preView.backgroundColor  = [UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1];
}
- (IBAction)changeColor:(UISlider *)sender {
    self.dv.currentColor = self.preView.backgroundColor  = [UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1];
}
- (IBAction)changeWeith:(UISlider *)sender {
    self.dv.currentWeith = sender.value;
}
- (IBAction)clickButtonAction:(UIButton *)sender {
    switch (sender.tag) {
        case 0://撤销
            if (self.dv.lines.count > 0) {
//            现将要删的保存好
                [self.dv.deletedLine addObject:[self.dv.lines lastObject]];
//            移除
                [self.dv.lines removeLastObject];
//            重绘制
                [self.dv setNeedsDisplay];
            }

            break;
        case 1://恢复
            if (self.dv.deletedLine.count > 0) {
              
                [self.dv.lines addObject:[self.dv.deletedLine lastObject]];
                
                [self.dv.deletedLine removeLastObject];
                
                [self.dv setNeedsDisplay];
            }
           
            break;
        case 2://橡皮擦
          self.dv.currentColor = self.preView.backgroundColor  = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
            self.dv.currentWeith = 10;
            break;
    }
}



@end
