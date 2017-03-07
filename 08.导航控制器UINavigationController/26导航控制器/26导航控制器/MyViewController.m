//
//  MyViewController.m
//  26导航控制器UInavigationbar导航栏 /工具栏
//
//  Created by YuanLiang on 4/21/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"
#import "OtherViewController.h"
@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupNavigationContent];
    [self setupNavigationStyle];
    [self setupToolbal];

}
//配置导航内容
-(void)setupNavigationContent{
    self.navigationItem.title = @"发现";
    
    UIButton *button = [[UIButton alloc]init];//自定义按钮
    //    UIButton *button1 = [[UIButton buttonWithType:UIButtonTypeCustom]];
    button.frame = CGRectMake(0,0, 80, 40);//x,y坐标对导航栏的titleView不起作用
    //    button.backgroundColor = [ UIColor lightGrayColor];
    [button setImage:[UIImage imageNamed:@"up"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"down"] forState:UIControlStateSelected];
    //    UIControlStateHighlighted不可持续
    [button setTitle:@"更多" forState:UIControlStateNormal];

    //    setTitle默认是白色
//    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    
    //    我按钮添加点击事件
    [button addTarget:self action:@selector(clickTitleButton:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.titleView = button;
    
    
    //    self.navigationItem.titleView =[[UISwitch alloc]init];
    //    titleView具有优先性
    
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithTitle:@"ADD" style:UIBarButtonItemStylePlain target:self action:@selector(clickAddItem:)];
    //    self.navigationItem.rightBarButtonItem = rightItem;
    
    // UIImage调用工厂方法 imageNamed:生成图片实例
    UIImage *rightImage = [[UIImage imageNamed: @"01.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    //    Render渲染
    
    UIBarButtonItem *rightItem1 = [[UIBarButtonItem alloc]initWithImage: rightImage style:UIBarButtonItemStyleDone target:nil action:nil];
    
    self.navigationItem.rightBarButtonItems =@[rightItem,rightItem1];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    self.navigationItem.leftBarButtonItem = leftItem;
}


//配置导航栏的风格
-(void)setupNavigationStyle
{
//    how to setup navigation's backcolor
    [self.navigationController.navigationBar setBarTintColor:[UIColor purpleColor]];
 
//    修改状态栏字体为白色，该导航栏色系即可
    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack ];
    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
}

//配置底部工具栏：只能加UIToolBarButtonItem类型的按钮
-(void)setupToolbal
{
    self.navigationController.toolbarHidden = NO;
    
// 创建系统版的有播放图标的barBUttonItem
    UIBarButtonItem *playItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:nil action:nil];
     UIBarButtonItem *fastForwardItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:nil action:nil];
     UIBarButtonItem *rewindItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:
                                    UIBarButtonSystemItemRewind target:nil action:nil];
//     UIBarButtonItem *replyItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:nil action:nil];//
//     UIBarButtonItem *refreshItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:nil action:nil];//
//    UIBarButtonItem *redoItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRedo target:nil action:nil];
//     UIBarButtonItem *bookMarksItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
//     UIBarButtonItem *searchItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:nil action:nil];//
//     UIBarButtonItem *organizeItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:nil action:nil];
//     UIBarButtonItem *composeItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:nil action:nil];//
//     UIBarButtonItem *trashItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:nil action:nil];//
     UIBarButtonItem *flexibleSpaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *fixedSpaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixedSpaceItem.width = 40;
    self.toolbarItems = @[fixedSpaceItem,rewindItem,flexibleSpaceItem, playItem,flexibleSpaceItem,fastForwardItem,fixedSpaceItem/*,replyItem,refreshItem,redoItem,bookMarksItem,searchItem,organizeItem,composeItem,trashItem*/];
//    特效：弹簧flexibleSpaceItem、木棍fixedSpaceItem
}
     

-(void)clickTitleButton:(UIButton *)btn//音乐播放器播放的选择
{
    btn.selected = !btn.selected;
    if(btn.selected){
        NSLog(@"选中了做。。。。。");
    }
    else{
            NSLog(@"没选中做<<<<<<<");
        }
    
}

-(void)clickAddItem:(UIBarButtonItem *)item;
{
    OtherViewController *ovc = [[OtherViewController alloc]init];
//
    ovc.hidesBottomBarWhenPushed = YES;//推出时隐藏底部bar，返回时显示底部的bar
    
    [self.navigationController pushViewController:ovc animated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    self.navigationController.navigationBarHidden = !self.navigationController.navigationBarHidden;
    [self.navigationController setNavigationBarHidden:!self.navigationController.navigationBarHidden animated:YES];
}
@end
