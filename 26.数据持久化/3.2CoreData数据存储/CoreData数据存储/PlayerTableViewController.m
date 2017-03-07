//
//  PlayerTableViewController.m
//  CoreData数据存储
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "PlayerTableViewController.h"
#import "Palyers.h"
#import "AppDelegate.h"
@interface PlayerTableViewController ()
@property(nonatomic,weak)AppDelegate *app;
@property(nonatomic,strong)NSArray *players;
@end

@implementation PlayerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addAction:)];
    
    self.app = [UIApplication sharedApplication].delegate;
}
-(void)addAction:(UIBarButtonItem *)btn{
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"提示" message:@"请输入球员名称和年龄" preferredStyle:UIAlertControllerStyleAlert];
    
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"名字";
    }];
    
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"年龄";
    }];
    
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UITextField *nameTF = ac.textFields[0];
        UITextField *ageTF = ac.textFields[1];
        
        Palyers *p = [NSEntityDescription insertNewObjectForEntityForName:@"Palyers" inManagedObjectContext:self.app.managedObjectContext];
        
        p.name = nameTF.text;
        p.age = @(ageTF.text.intValue);
//保存
        [self.app saveContext];
        
//        刷新显示
        [self.tableView reloadData];
        
        
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [ac addAction:action1];
    [ac addAction:action2];
    [self presentViewController:ac animated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    每次加载单元格时，都对coreData中的数据进行查找，并给当前数组赋值，确定单元格个数
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Palyers"];
    self.players = [self.app.managedObjectContext executeFetchRequest:request error:nil];
    
    return self.players.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Palyers *p = self.players[indexPath.row];
    cell.textLabel.text = p.name;
    cell.detailTextLabel.text = p.age.stringValue;
  
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Palyers *p  = self.players[indexPath.row];
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"提示" message:@"请修改球员名称和年龄" preferredStyle:UIAlertControllerStyleAlert];
    
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.clearButtonMode = UITextFieldViewModeAlways;
        textField.text= p.name;
    }];
    
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.clearButtonMode = UITextFieldViewModeAlways;
        textField.text = p.age.stringValue;
    }];
    
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UITextField *nameTF = ac.textFields[0];
        UITextField *ageTF = ac.textFields[1];
        p.name = nameTF.text;
        p.age = @(ageTF.text.intValue);
        //保存
        [self.app saveContext];
        
        //        刷新显示
        [self.tableView reloadData];
        
        
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [ac addAction:action1];
    [ac addAction:action2];
    [self presentViewController:ac animated:YES completion:nil];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
//        利用数组获取要删除的对象
        Palyers *p = self.players[indexPath.row];
//        从数据库中删除
        [self.app.managedObjectContext deleteObject:p];
//        保存新的数据库
        [self.app saveContext];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
