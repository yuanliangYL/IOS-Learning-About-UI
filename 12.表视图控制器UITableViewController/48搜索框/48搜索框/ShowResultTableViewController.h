//
//  ShowResultTableViewController.h
//  48搜索框
//
//  Created by YuanLiang on 5/10/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
/*本控制器是用于显示搜索结果的控制器
 是被搜索框使用的，所以他的功能就是由使用者提供一组数据，他负责显示即可
 */
@interface ShowResultTableViewController : UITableViewController
//nsarray <Goods *>
@property(nonatomic,strong)NSArray *resultData;
@end
