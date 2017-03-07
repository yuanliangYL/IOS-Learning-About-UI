//
//  ViewController.m
//  Touches触摸:四种方法
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//375*667
//frame (100,100,200,200)与bounds(0,0,200,200)区别
//    UIImageView*iv = [[UIImageView alloc]initWithFrame:self.view.bounds];
#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    点击手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
//    点击次数
    tap.numberOfTapsRequired = 2;//双击
//    设置点击手指数
    tap.numberOfTouchesRequired = 1;
//    给图片设置点击功能,添加点击手势
    UIImageView*iv = [[UIImageView alloc]initWithFrame:CGRectMake(100, 200,200, 300)];
    iv.image = [UIImage imageNamed:@"05.jpg"];
    
//    打开交互
    iv.userInteractionEnabled = YES;
//    在图片中添加手势实例
    [iv addGestureRecognizer:tap];
    [self.view addSubview:iv];
    
    
//    缩放手势
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchAction:)];
    [iv addGestureRecognizer:pinch];
    
    
//    旋转手势
    UIRotationGestureRecognizer *rotation = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotationAction:)];
    [iv addGestureRecognizer:rotation];
}
-(void)tapAction:(UITapGestureRecognizer *)tap{
//    UIImageView *iv = (UIImageView *)tap.view;//强制转换，得到点击图片
    UIView *iv = tap.view;
    [iv removeFromSuperview];
}


-(void)pinchAction:(UIPinchGestureRecognizer *)pinch{
//    NSLog(@"缩放比值：%f",pinch.scale);
    UIView *iv = pinch.view;
    iv.bounds = CGRectMake(0, 0, iv.bounds.size.width*pinch.scale, iv.bounds.size.height*pinch.scale);
    
//    每次缩放后将pinch 的缩放比例scale还原成1，让缩放比更新一下，防止变化速速过快
    pinch.scale = 1;
}

-(void)rotationAction:(UIRotationGestureRecognizer *)rotation
{
    NSLog(@"%f",rotation.rotation);//输出弧度值
    UIView *iv = rotation.view;
//    第一个参数一般写成V.transform,表示接下来的变换以那个状态为初始状态
    iv.transform = CGAffineTransformRotate(iv.transform, rotation.rotation);
    
    rotation.rotation = 0;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    NSLog(@"%ld",touches.count);
//    通过touches获得触摸的坐标
    NSArray *array = touches.allObjects;
    if (array.count == 2) {
//        获取触摸对象
        UITouch *touch1 = array[0];
        UITouch *touch2 = array[1];
//      获取触摸对象在视图中的点
        CGPoint p1 = [touch1 locationInView:self.view];
        CGPoint p2 = [touch2 locationInView:self.view];
//    输出触摸点，NSStringFromCGPoint方法使用
        NSLog(@"%@___%@",NSStringFromCGPoint(p1),NSStringFromCGPoint(p2));
    }
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}

//当拖动过程中，被意外中断时（来电、屏幕状态栏被拉下等)
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
