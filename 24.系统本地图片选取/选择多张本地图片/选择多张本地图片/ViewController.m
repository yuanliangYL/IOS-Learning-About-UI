//
//  ViewController.m
//  选择多张本地图片
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property(nonatomic,strong) UIScrollView *sv;
@property(nonatomic,strong)NSMutableArray *allImages;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.allImages = [NSMutableArray array];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIImagePickerController *vc = [UIImagePickerController new];
    vc.delegate = self;
    
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - UINavigationControllerDelegate协议
//将要显示页面的时候执行
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
//    判断只有当显示页面为第二个页面的时候才添加
    if (navigationController.viewControllers.count == 2) {
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 567, 375, 100)];
        view.backgroundColor = [UIColor lightGrayColor];
        [viewController.view addSubview:view];
        
//        添加滚动视图
        self.sv = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 20, 375, 80)];
        [view addSubview:self.sv];
        
//    添加按钮
        UIButton *doneBtn = [[UIButton alloc]initWithFrame:CGRectMake(375-50, 0, 50, 20)];
        [doneBtn setTitle:@"Done" forState:UIControlStateNormal];
        [doneBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [doneBtn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:doneBtn];
    }
}
-(void)buttonAction:(UIButton *)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
//- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{    
//}

#pragma mark -UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    NSLog(@"%@",info);
//    通过info字典里的关键子获取对应值得到选择的图片
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(self.allImages.count * 80, 0, 80, 80)];
    iv.image = image ;
    [self.sv addSubview: iv];
    
    [self.allImages addObject:image];
    
    [self.sv setContentSize:CGSizeMake(self.allImages.count * 80, 0)];
    
}
//- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
//    
//}

@end
