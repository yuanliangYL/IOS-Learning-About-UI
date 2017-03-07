//
//  ViewController.m
//  自定义归档对象
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    Person *p1 = [Person personWithName:@"jessica" andlocation:@"in my bed" andAge:25];
//    Person *p2 = [Person personWithName:@"Skye" andlocation:@"US" andAge:26];
//    归档保存
//    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:@[p1,p2]];
//    [data writeToFile:@"/Users/apple/Desktop/UI/29.归档/3.自定义归档对象/girls.arch" atomically:YES];
    
    
    
//  获取保存的数据
    NSData *data = [NSData dataWithContentsOfFile:@"/Users/apple/Desktop/UI/29.归档/3.自定义归档对象/girls.arch"];
    NSArray *allGirls = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    for (Person *p in allGirls) {
        NSLog(@"%@_%@_%ld",p.name,p.location,p.age);
    }
    
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
