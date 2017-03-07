//
//  ContactsTableViewController.m
//  4.归档综合（结合tableView）
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "ContactS.h"
@interface ContactsTableViewController ()
@property(nonatomic,strong) NSMutableArray *allContacts;
@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"联系人列表";
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addAction:)];
    
//    获取归档数据, //数组进行初始化
    NSData *data = [NSData dataWithContentsOfFile:@"/Users/apple/Desktop/UI/26.数据持久化/2.归档/4.归档综合（结合tableView）/contacts.arch"];
    
//    判断归档文件是否为空，不为空取出其中的数据
    if (data) {//如果之前保存过数据 把之前保存的数据取出
        self.allContacts = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        
    }else{ //如果第一次运行 需要把数组进行初始化
        self.allContacts = [NSMutableArray array];
    }
}

-(void)addAction:(UIBarButtonItem *)btn{
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"提示" message:@"请输入新增联系人信息" preferredStyle:UIAlertControllerStyleAlert];
    
//    设置文本框
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
//参数textField是界面textField实例
        textField.placeholder = @"please enter the contacts's name";
    }];
    
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"please enter the number";
        textField.textColor = [UIColor redColor];
    }];
    
//    设置确认与取消按钮
    UIAlertAction *a1 = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {

//得到所有输入内容数组
        UITextField *nameField = ac.textFields[0];
        UITextField *numberField = ac.textFields[1];
        
//        得到文本框中的输入值
        ContactS *contact = [[ContactS alloc]init];
        contact.name = nameField.text;
//        文本转integer
        contact.number = numberField.text.integerValue;
        
//        归档(单独封装出来）
        [self saveContaxts:contact];
        
    }];

//    匿名函数、闭包函数的初级应用
    UIAlertAction *a2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
//    添加按钮
    [ac addAction:a2];
    [ac addAction:a1];
    
//    推出当前警告框
    [self presentViewController:ac animated:YES completion:nil];
}


-(void)saveContaxts:(ContactS *)c{
    
    [self.allContacts addObject:c];

    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self.allContacts];
    [data writeToFile:@"/Users/apple/Desktop/UI/26.数据持久化/2.归档/4.归档综合（结合tableView）/contacts.arch" atomically:YES];
    
//    刷新界面显示(这里不很关键）
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allContacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (!cell) {
        cell = [[UITableViewCell  alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"myCell"];
    }
    ContactS *contact = self.allContacts[indexPath.row];
   
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text  =@(contact.number).stringValue;
  
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
