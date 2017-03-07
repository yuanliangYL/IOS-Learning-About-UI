//
//  ViewController.m
//  相机Demo
//
//  Created by YuanLiang on 6/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "EditingViewController.h"
@interface ViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickButtonToEditingImage:(UIButton *)sender {
    UIImagePickerController *pc = [UIImagePickerController new];
    pc.delegate = self;
    [self presentViewController:pc animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    
    EditingViewController *evc = [EditingViewController new];
    evc.editing = UIImagePickerControllerOriginalImage;
    [picker pushViewController:evc animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
