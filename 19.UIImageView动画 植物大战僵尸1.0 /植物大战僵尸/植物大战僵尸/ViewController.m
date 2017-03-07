//
//  ViewController.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "Palnt.h"
#import "SunFlower.h"
#import "SmallPea.h"
#import "BigPea.h"
#import "IcePea.h"
#import "GunPea.h"
#import "Nut.h"
#import "ZambA.h"
#import "ZombB.h"
#import "ZombC.h"
#import "ZombD.h"

@interface ViewController ()
@property(nonatomic ,assign)int zombCount;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *plantIVs;
@property (weak, nonatomic) IBOutlet UILabel *sunCountLabel;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *boxes;
@property(nonatomic,strong)Palnt *dragIV;

@property(nonatomic,strong)NSMutableArray *allZomb;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sunCountLabel.text = @"300";
    [self initUI];
    self.allPlant = [NSMutableArray array];
    self.allZomb = [NSMutableArray array];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0 / 100 target:self selector:@selector(moveAction) userInfo:nil repeats:YES];
    
//    添加僵尸
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(addZomb) userInfo:nil repeats:YES];
    
//     判断碰撞
    [NSTimer scheduledTimerWithTimeInterval:1.0/100 target:self selector:@selector(cheakingCrush:) userInfo:nil repeats:YES];
}
-(void)cheakingCrush:(NSTimer*)timer{
//    子弹击中僵尸消失
    for (Palnt *plant in self.allPlant) {
        if ([plant isKindOfClass:[SmallPea class]]) {
            SmallPea *pea = (SmallPea *)plant;
            for (UIImageView *bullet in pea.allBullet) {
                for (Zomb *zomb in self.allZomb) {
                    if (CGRectIntersectsRect(bullet.frame, zomb.frame)) {
                        if ([pea isMemberOfClass:[IcePea class]] && zomb.speed != 0) {
                            zomb.speed *= .5;
                            zomb.alpha =  .7;
                        }
                        [bullet removeFromSuperview];
                        [pea.allBullet removeObject:bullet];
                        
                        zomb.life --;
                        if (zomb.life == 0) {
                            [zomb removeFromSuperview];
                            [self.allZomb removeObject:zomb];
                        }
                        return;
                    }
                }
            }
        }
    }
//    僵尸与植物的碰撞
    for (Palnt *plant in self.allPlant) {
        for (Zomb *zomb in self.allZomb) {
            if (CGRectContainsPoint(plant.superview.frame, zomb.center) && zomb.speed != 0) {
//                在僵尸类中实现eat方法
                [zomb eatPlant:plant];
            }
        }
    }
}
-(void)addZomb{
    int type = self.zombCount/30;
    Zomb *zomb = nil;
    int line = arc4random() % 5 + 1;
    switch (type) {
        case 0:
            zomb = [[ZambA alloc]initWithFrame:CGRectMake(667, line * 55+5, 40, 60)];
            break;
        case 1:
            zomb = [[ZombB alloc]initWithFrame:CGRectMake(667, line * 60, 40, 60)];
            break;
        case 2:
            zomb = [[ZombC alloc]initWithFrame:CGRectMake(667, line * 60, 40, 60)];
            break;
        default:
            zomb = [[ZombD alloc]initWithFrame:CGRectMake(667, line * 60, 40, 60)];
            break;
    }
    [zomb beginZombAnimation];
    [self.view addSubview:zomb];
    [self.allZomb addObject:zomb];
    self.zombCount++;
}


//移动子弹
-(void)moveAction{
    for (Palnt *palnt  in self.allPlant) {
        if ([palnt isKindOfClass:[SmallPea class]]) {
            SmallPea *pea = (SmallPea *)palnt;
            for (UIImageView *iv in pea.allBullet) {
                iv.center = CGPointMake(iv.center.x + 4, iv.center.y);
                
                if (iv.center.x > 667) {
                    [iv removeFromSuperview];
                    
                    [pea.allBullet removeObject:iv];
                    break;
                }
            }
        }
    }
    for (Zomb *zomb in self.allZomb) {
        
        zomb.center = CGPointMake(zomb.center.x-zomb.speed/3, zomb.center.y);
        if (zomb.center.x <= 0) {
            self.allZomb = nil;
            [zomb removeFromSuperview];
            for (Palnt *p in self.allPlant) {
                [p removeFromSuperview];
            }
            [self.allPlant removeAllObjects];
            UIImageView *iv = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
            iv.image = [UIImage imageNamed:@"end"];
            [self.view addSubview:iv];
            
        }
    }
    
        
}

//初始化界面
-(void)initUI{
//   加载要用于动画的可以截取的图片
    UIImage *plantsImage = [UIImage imageNamed:@"seedpackets.png"];
    
//    获取每张要截取出来的图片的宽度：图片整体宽度/可截取出来的图片数目
    float w = plantsImage.size.width/18;
    
//  利用for循环的到CGImage图片
    for (int i=0; i<6; i++) {
        
        CGImageRef subImage = CGImageCreateWithImageInRect(plantsImage.CGImage, CGRectMake( i* w, 0, w, plantsImage.size.height));
        
//        获得植物数组对象
        UIImageView *plantIV = self.plantIVs[i];
        
//        转化图片并给对应的每一个植物数组元素赋值
        plantIV.image = [UIImage imageWithCGImage:subImage];
//  注意UIImage（属性）转CGImage与 CGImage转UIImage （imageWithCGImage方法）的区别！！1
//        手动释放CGImage图片
        CGImageRelease(subImage);
    }
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *t  = [touches anyObject];
    CGPoint p = [t locationInView:self.view];
    
    int currentSunCount = self.sunCountLabel.text.intValue;
    for (UIImageView *iv in self.plantIVs) {
        if (CGRectContainsPoint(iv.frame, p)) {
            switch (iv.tag) {
                case 0:
                    if (currentSunCount < self.dragIV.costCount) {
                        return;
                    }
//                    不创建新的对象，case不用添加花括号
                    self.dragIV  = [[SunFlower alloc]initWithFrame:iv.frame];
                    break;
                    
                case 1:
                    if (currentSunCount < self.dragIV.costCount) {
                        return;
                    }
                    self.dragIV  = [[SmallPea alloc]initWithFrame:iv.frame];
                    break;
                case 2:
                    if (currentSunCount < self.dragIV.costCount) {
                        return;
                    }
                    self.dragIV  = [[BigPea alloc]initWithFrame:iv.frame];
                    break;
                case 3:
                    if (currentSunCount < self.dragIV.costCount) {
                        return;
                    }
                    self.dragIV  = [[IcePea alloc]initWithFrame:iv.frame];
                    break;
                case 4:
                    if (currentSunCount < self.dragIV.costCount) {
                        return;
                    }
                    self.dragIV  = [[GunPea alloc]initWithFrame:iv.frame];
                    break;
                case 5:
                    if (currentSunCount < self.dragIV.costCount) {
                        return;
                    }
                    self.dragIV  = [[Nut alloc]initWithFrame:iv.frame];
                    break;
            }
            self.dragIV.delegate = self;
            [self.dragIV beginAnimation];
            [self.view addSubview:self.dragIV];
        }
    }
    
}
//触摸移动过程中做什么：改变移动视图的中心点
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self.view];
    
    self.dragIV.center = p;
}

//触摸完成要做什么事情
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    遍历草地上的每一个坑视图
    for (UIView *box in self.boxes) {
        //        判断拖动的中心是否在指定的框内，以及该框内是否有子视图
        if (CGRectContainsPoint(box.frame, self.dragIV.center) && box.subviews.count == 0) {
            [box addSubview:self.dragIV];
//            把植物添加到中心位置（中心点的相对性）
            self.dragIV.center = CGPointMake(box.frame.size.width/2,box.frame.size.height/2);
            
            [self.dragIV beginFire];
            [self.allPlant addObject:self.dragIV];
            [self addMoney:-self.dragIV.costCount];
        }
    }
//    判断移动的视图是否在指定的视图中（反向：如果还在self.view中，删除创建的拖动对象）
    if ([self.dragIV.superview isEqual:self.view]) {
        [self.dragIV removeFromSuperview];
    }
//    完成拖动，self.dragIV赋值为空，避免重复拖动
  
    
    
    self.dragIV = nil;
}




//实现计数
-(void)addMoney:(NSInteger)count{
//    将文本转成int
    NSInteger currentCount = self.sunCountLabel.text.intValue;
//    将int转成男生number，在转成string
    self.sunCountLabel.text = @(currentCount + count).stringValue;
}

@end
