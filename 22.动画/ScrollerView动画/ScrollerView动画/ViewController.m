//
//  ViewController.m
//  ScrollerView动画
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)NSMutableArray *allImage;
@property (nonatomic,strong)UIScrollView *scv ;
@property(nonatomic,strong)UIImageView *dragIV;
@property (weak, nonatomic) IBOutlet UIVisualEffectView *contentView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    用属性创建一个空数组以备使用
    self.allImage = [NSMutableArray array];
    
//    创建滚动视图实例
    UIScrollView *sc = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 20, 375, 150)];
//    将视图添加到当前视图下
    [self.view addSubview:sc];
    self.scv = sc;
    
//    利用for循环给滚动视图添加图片
    for ( int i = 0; i < 9; i++) {
        UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(i * 100, 0, 100, 150)];
        iv.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d",i + 1]];
        [sc addSubview: iv];
        iv.userInteractionEnabled = YES;
        
//        给数组赋值
        [self.allImage addObject:iv];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addDeleteButton:)];
        [iv addGestureRecognizer:tap];
   
//        添加长按手势(3步）
        UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(moveAction:)];
        [iv addGestureRecognizer:longPress];
        iv.userInteractionEnabled = YES;
        
        
    }
    
//    设置滚动视图的内容视图范围，实现滚动
    sc.contentSize = CGSizeMake(9 * 105, 0);//    无需滚动方向的值可以设置成0
    sc.showsHorizontalScrollIndicator = NO;
}

-(void)addDeleteButton:(UITapGestureRecognizer *)tap {
    UIView *iv = (UIView *)tap.view;
//        创建删除按钮
        UIButton *cancelBtn = [[UIButton alloc]initWithFrame:CGRectMake(70, 0, 30, 30)];
        [cancelBtn setTitle:@"X" forState:UIControlStateNormal];
        [cancelBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [cancelBtn addTarget:self action:@selector(removeImage:) forControlEvents:UIControlEventTouchUpInside];
        [iv addSubview:cancelBtn];
}

-(void)removeImage:(UIButton *)sender
{
//    获取按钮所在的视图
    UIImageView *iv = (UIImageView *)sender.superview;
//    从视图中移除
    [iv removeFromSuperview];
//    从数组中移除:(数组长度减一，被删元素后面元素自动向前补位）
    [self.allImage removeObject:iv];
    
//    遍历删除后的数组
    for (int i = 0; i < self.allImage.count; i++) {
//        获取数组对应元素的图片
        UIImageView *iv = self.allImage[i];
//        执行动画
        [UIView animateWithDuration:1 animations:^{
//            更改数组元素对应的图片在scrollerView 中的位置，先用一个CGRect变量来储存图片的位置
            CGRect frame = iv.frame;
//         更改位置变量中横坐标的值
            frame.origin.x = i * 100;
//            设置图片更改后新的位置
            iv.frame = frame;
        }];
    }
//   更改新的显示内容
    self.scv.contentSize = CGSizeMake(self.allImage.count * 100, 0);
}

-(void)moveAction:(UILongPressGestureRecognizer *)sender{
//    获取触摸点
    CGPoint p = [sender locationInView:self.view];
//   获取触摸对象
     UIImageView *iv = (UIImageView *)sender.view;
    
    switch ((int)sender.state) {
        case UIGestureRecognizerStateBegan:{
//            frame坐标系转换过程（注意）
            CGRect oldframe = iv.frame;
            CGRect newframe = [self.scv convertRect:oldframe toView:self.view];
                               
            UIImageView *NewIV = [[UIImageView alloc]initWithFrame:newframe];
            NewIV.image = iv.image;
            [self.view addSubview:NewIV];//这里会出现不在同一坐标系下拖动图片，图片偏移现象，应该先进行坐标系转换
            self.dragIV = NewIV;
            self.dragIV.userInteractionEnabled = YES;
    }
            break;
    
        case UIGestureRecognizerStateChanged:
            self.dragIV.center = p;
            break;
            
        case UIGestureRecognizerStateEnded:
            if (CGRectContainsPoint(self.contentView.frame, p)) {
//                中心点的坐标转换
                CGPoint oldcenter = self.dragIV.center;
                CGPoint newcenter = [self.view convertPoint:oldcenter toView:self.contentView];
                self.dragIV.center = newcenter;
                [self.contentView addSubview:self.dragIV];
                
            }else{
//                移动时
                [self.dragIV removeFromSuperview];
            }
            [self addGestures];
            break;
    }
}

-(void)addGestures{
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(deleteImage:)];
    tap1.numberOfTapsRequired = 2;
    [self.dragIV addGestureRecognizer:tap1];
    
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(orderImage:)];
    [self.dragIV addGestureRecognizer:tap2];
    
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchTheImage:)];
    [self.dragIV addGestureRecognizer: pinch];
    
    UIPanGestureRecognizer*pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(moveTheImage:)];
    [self.dragIV addGestureRecognizer:pan];
    
    UIRotationGestureRecognizer *r = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotationTheImage:)];
    [self.dragIV addGestureRecognizer:r];
}
-(void)deleteImage:(UITapGestureRecognizer *)sender{
    UIView *view = (UIView *)sender.view;
    [view removeFromSuperview];
}

-(void)orderImage:(UITapGestureRecognizer *)sender
{
     UIView *view = (UIView *)sender.view;
    [self.contentView bringSubviewToFront:view];
}

-(void)pinchTheImage:(UIPinchGestureRecognizer *)pinch{
    UIView *iv = (UIView *)pinch.view;
    iv.transform = CGAffineTransformScale(iv.transform, pinch.scale, pinch.scale);
    pinch.scale = 1;
}

-(void)moveTheImage:(UIPanGestureRecognizer *)pan
{
    CGPoint p = [pan locationInView:self.contentView];
    UIView *iv = (UIView *)pan.view;
    iv.center = p;
    iv.clipsToBounds = YES;
}

-(void)rotationTheImage:(UIRotationGestureRecognizer *)r{
    UIView *v = r.view;
    v.transform = CGAffineTransformRotate(v.transform, r.rotation);
    r.rotation = 0;
}
@end
