//
//  ViewController.m
//  选择系统图片
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIImagePickerController *imagePick =  [[UIImagePickerController alloc]init];
    
    imagePick.delegate = self;
    
    //    图片编辑器是否可以编辑allowsEditing
    imagePick.allowsEditing = YES;
    
//    设置源的类型
    [imagePick setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
//    推出图片页面
    [self presentViewController:imagePick animated:YES completion:nil];
}

//用户选择图片完成后执行
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
//    获取选择的图片
    NSLog(@"%@",info);
//    获得编辑过后的图片
    UIImage *image = info[UIImagePickerControllerEditedImage];
    
//    UIImage *image = info[UIImagePickerControllerOriginalImage];//原图
    
    UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    iv.image = image;
    
    [self.view addSubview:iv];
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
//用户点击取消按钮会进来
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
