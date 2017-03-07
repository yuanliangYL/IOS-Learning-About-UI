//
//  ViewController.m
//  拖动图片
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//将视图中的所用视图连线到一个数组中
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *imagesView;

@property (weak, nonatomic) IBOutlet UIView *leftView;
@property (weak, nonatomic) IBOutlet UIView *rightView;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
//声明一个当前类中可使用的私有UIImageView属性
@property(nonatomic,strong)UIImageView *dragIV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    获取触摸实例
    UITouch *t = [touches anyObject];//NSSet<UITouch *>集合
//   定位触摸点在当前屏幕中的位置
    CGPoint p = [t locationInView:self.view];
//注：    触摸点P是动态的
    
//   遍历当前视图中的图片视图
    for (UIImageView *imageView in self.imagesView) {
        
//    判断：如果触摸点在特定的图片视图范围内
        if (CGRectContainsPoint(imageView.frame, p)) {
//            [imageView removeFromSuperview];
            
//            以该范围内的图片为原本创建新图片
//            这里的新视图多处会使用，因此声明成属性
            self.dragIV = [[UIImageView alloc]initWithFrame:imageView.frame];
            self.dragIV.image = imageView.image;
            
//           将新视图添加到当前视图中
            [self.view addSubview:self.dragIV];
        }
    }
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    获取触摸实例并定位触摸点在移动状态下，在当前屏幕中的位置
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self.view];

//根据移动的位置点，更改新视图的中心点位置实现移动效果
    self.dragIV.center = p;
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    判断视图中心点是否移动到左视图
    if(CGRectContainsPoint(self.leftView.frame, self.dragIV.center)){
//        当父视图发生改变时，要先进行坐标系转换
        CGPoint oldCenter = self.dragIV.center;
        
//        把相对于self.view的坐标转换成相对于self.leftView：（convert....to)
        CGPoint newCenter = [self.view convertPoint:oldCenter toView:self.leftView];
        
//        更改新的中心
        self.dragIV.center = newCenter;
        
//超过屏幕不显示clip subviews
        [self.leftView setClipsToBounds:YES];
        
        [self.leftView addSubview:self.dragIV];
        
//      两种方式来获取视图中的子视图数
//        方式一：格式化拼接
//        self.leftLabel.text = [NSString stringWithFormat:@"%ld",self.leftView.subviews.count];
        
//        方式二：用stringValue将数值转换成text：（注意这种间便方式）
        self.leftLabel.text = @(self.leftView.subviews.count).stringValue;
    }
    
    else if (CGRectContainsPoint(self.rightView.frame, self.dragIV.center)){
        CGPoint oldCenter = self.dragIV.center;
        CGPoint newCenter = [self.view convertPoint:oldCenter toView:self.rightView];
        self.dragIV.center = newCenter;
        [self.rightView addSubview:self.dragIV];
    }
    
    else{
        [self.dragIV removeFromSuperview];
    }
    
    self.dragIV = nil;//引用为空，指向的对象被添加到指定视中了
}


@end
