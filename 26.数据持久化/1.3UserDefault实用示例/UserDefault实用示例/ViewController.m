//
//  ViewController.m
//  UserDefault实用示例
//
//  Created by YuanLiang on 6/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//NSUserDefaults

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *volumeSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *playModeSC;

@end

@implementation ViewController
//用偏好实例保存音量
- (IBAction)sliderToChangeVolume:(UISlider *)sender {
    NSUserDefaults *volumeUD = [NSUserDefaults standardUserDefaults];
    
    [volumeUD setFloat:self.volumeSlider.value forKey:@"volume"];
   
    [volumeUD synchronize];
    
//同步 可以使内存中数据改变完之后 立即保存到文件中   不加也能保存 但是有可能不够及时//这行代码一定要加，虽然有时候不加这一行代码也能保存成功，但是如果程序运行占用比较大的内存的时候不加这行代码，可能会造成无法写入plist文件中，我试验过，真的是这样的
//    synchronize ['sɪŋkrənaɪz]vt. 使……合拍；使……同步
}

- (IBAction)chosePlayMode:(UISegmentedControl *)sender {
    NSUserDefaults *playModeUD = [NSUserDefaults standardUserDefaults];
    
    [playModeUD setInteger:sender.selectedSegmentIndex forKey:@"playMode"];
    
    [playModeUD synchronize];
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
//    取出默认设置偏好
    NSUserDefaults *UD = [NSUserDefaults standardUserDefaults];
    self.volumeSlider.value = [UD floatForKey:@"volume"];

    self.playModeSC.selectedSegmentIndex = [UD integerForKey:@"playMode"];
}


//用户设置一键还原
- (IBAction)cancleAllUserDefaults:(UIButton *)sender {
    NSUserDefaults *UD = [NSUserDefaults standardUserDefaults];
    
//    用字典表示用户偏好设置里面的所有键值对
    NSDictionary *dictionary = [UD dictionaryRepresentation];
//    遍历字典所有的key
    for (NSString *key in [dictionary allKeys]) {
//        逐个删除
        [UD removeObjectForKey:key];
        [UD synchronize];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
