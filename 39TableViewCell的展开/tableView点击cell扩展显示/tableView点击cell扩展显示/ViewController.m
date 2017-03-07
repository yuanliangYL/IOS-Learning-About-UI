//
//  Control2.m
//  UITableViewCellExpansion
//
//  Created by 谭启宏 on 15/12/10.
//  Copyright © 2015年 谭启宏. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "CsutomExpansionCell.h"
#define SectionCount 5
#define ExpandCount 3

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (assign, nonatomic) BOOL isExpand;
@property (strong, nonatomic) NSIndexPath *selectedIndexPath;

@end

@implementation ViewController
//- (UITableView *)tableView {
//    if (!_tableView) {
//        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds)) style:UITableViewStylePlain];
//        _tableView.delegate = self;
//        _tableView.dataSource = self;
//        [self.tableView registerClass:[CustomCell class] forCellReuseIdentifier:@"CustomCell"];
//        [self.tableView registerClass:[CsutomExpansionCell class] forCellReuseIdentifier:@"CsutomExpansionCell"];
//    }
//    return _tableView;
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[CustomCell class] forCellReuseIdentifier:@"CustomCell"];
    [self.tableView registerClass:[CsutomExpansionCell class] forCellReuseIdentifier:@"CsutomExpansionCell"];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}

#pragma mark - <UITableViewDataSource,UITableViewDelegate>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return SectionCount;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.isExpand && self.selectedIndexPath.section == section) {
        return 1 + ExpandCount; //多个数量
    }
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if (self.isExpand && self.selectedIndexPath.section == indexPath.section) {     // Expand Cell
        cell = [tableView dequeueReusableCellWithIdentifier:@"CsutomExpansionCell" forIndexPath:indexPath];
    } else {    // Normal Cell
        cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.isExpand && self.selectedIndexPath.section == indexPath.section && indexPath.row != 0) {
        return 77;
    } else {
        return 44;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (!self.selectedIndexPath) {
        self.isExpand = YES;
        self.selectedIndexPath = indexPath;
        [self.tableView beginUpdates];
        [self.tableView insertRowsAtIndexPaths:[self indexPathsForExpandSection:indexPath.section] withRowAnimation:UITableViewRowAnimationTop];
        [self.tableView endUpdates];
    } else {
        if (self.isExpand) {
            if (self.selectedIndexPath == indexPath) {
                self.isExpand = NO;
                [self.tableView beginUpdates];
                [self.tableView deleteRowsAtIndexPaths:[self indexPathsForExpandSection:indexPath.section] withRowAnimation:UITableViewRowAnimationTop];
                [self.tableView endUpdates];
                self.selectedIndexPath = nil;
            } else if (self.selectedIndexPath.row != indexPath.row && indexPath.section <= self.selectedIndexPath.section) {
                // Select the expand cell, do the relating dealing.
            } else {
                self.isExpand = NO;
                [self.tableView beginUpdates];
                [self.tableView deleteRowsAtIndexPaths:[self indexPathsForExpandSection:self.selectedIndexPath.section] withRowAnimation:UITableViewRowAnimationTop];
                [self.tableView endUpdates];
                self.selectedIndexPath = nil;
            }
        }
    }
}



- (NSArray *)indexPathsForExpandSection:(NSInteger)section {
    NSMutableArray *indexPaths = [NSMutableArray array];
    for (int i = 1; i <= ExpandCount; i++) {
        NSIndexPath *idxPth = [NSIndexPath indexPathForRow:i inSection:section];
        [indexPaths addObject:idxPth];
    }
    return [indexPaths copy];
}

@end
