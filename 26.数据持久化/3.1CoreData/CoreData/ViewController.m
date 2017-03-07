//
//  ViewController.m
//  CoreData
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Team+CoreDataProperties.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickButton:(UIButton *)sender {
    //此方法可以在任意位置获取appdelegate里面的东西
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    switch (sender.tag) {
        case 0://增加
        {//创建新的对象第要用花括号
            Team *t = [NSEntityDescription insertNewObjectForEntityForName:@"Team" inManagedObjectContext:app.managedObjectContext];
            t.name = @"勇士";
            t.location = @"金州";
            t.ranking = @(1);
            
//            保存操作
            [app saveContext];
        }
            break;
            
        case 1://删除
        {
            NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Team"];
            NSArray *teams = [app.managedObjectContext executeFetchRequest:request error:nil];
            for (Team *t in teams) {
                if ([t.name isEqualToString:@"勇士"]) {
                    //从数据库中删除数据
                    [app.managedObjectContext deleteObject:t];
                }
            }
//保存操作
            [app saveContext];
        }
            break;
            
            
        case 2://修改
//            创建查找请求                   fetch:取得
        {  NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Team"];
            NSArray *teams = [app.managedObjectContext executeFetchRequest:request error:nil];
            for (Team *t in teams) {
                if ([t.name isEqualToString:@"勇士"]) {
                    t.name = @"湖人";
                    t.location = @"洛杉矶";
                    t.ranking = @(6);
                }
            }
            //保存操作
            [app saveContext];
        }
            break;
            
            
        case 3://查看
//            创建查询请求
        { NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Team"];
            
//app.managedObjectContext执行查询请求,得到表中的所有对象(是一个数组）
             NSArray *teams = [app.managedObjectContext executeFetchRequest:request error:nil];
//            遍历
            for (Team *t in teams) {
                NSLog(@"%@  %@   %@",t.name,t.location,t.ranking);
            } 
        }
            
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
