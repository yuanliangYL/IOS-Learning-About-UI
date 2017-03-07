//
//  ViewController.m
//  表情包plist
//
//  Created by YuanLiang on 6/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTF;
@property(nonatomic,strong)NSArray *faceArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *sv = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 667-216, 375, 216)];
//    216是软键盘默认高度
    [self.view addSubview:sv];

//    动态回去资源包下指定文件路径
    NSString *path = [[NSBundle mainBundle]pathForResource:@"emoticons" ofType:@"plist"];
//    从路径下加载指定文件：表情数组
    NSArray *faceArr = [NSArray arrayWithContentsOfFile:path];
    
//    给声明的数组属性赋值，使其在本类可用
    self.faceArr = faceArr;
    
    NSInteger  w = self.view.frame.size.width / 8.0;
    
//    遍历数组中的元素
    for (int i = 0; i < faceArr.count; i++) {
//        创建button来保存图片
        UIButton *faceBtn = [[UIButton alloc]initWithFrame:CGRectMake(i%8 *w, i/8*w, w, w)];
//记住这个模拟collectionView的公式CGRectMake(i%8 *w, i/8*w, w, w)
        
//        获取数组中的字典元素
        NSDictionary *imageDic = faceArr[i];
        
//        获取字典中的图片value
        NSString *imageName = imageDic[@"png"];
        
//      给视图按钮添加图片
        [faceBtn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
//        同构设置按钮的tag值来使按钮与界面表情构建关联
        faceBtn.tag = i;
        [sv addSubview:faceBtn];
        
        [faceBtn addTarget:self action:@selector(faceAction:) forControlEvents:UIControlEventTouchUpInside];

    }
//    设置滚动视图的内容大小
//    判断纵向所需的行数（重要计算方法）
    NSInteger line = faceArr.count%8 == 0 ? faceArr.count/8 : faceArr.count/8 + 1;
    
    [sv setContentSize:CGSizeMake(0, line*w)];
}

-(void)faceAction:(UIButton *)sender{
//    通过按钮tag值得到数组中每一个表情字典元素
    NSDictionary *faceDic = self.faceArr[sender.tag];
//   通过相应的表情字典的key得到点击某个表情后，文本框显示内容
    NSString *string = faceDic[@"chs"];
    
//    持续输入：字符串追加
    self.myTF.text = [self.myTF.text stringByAppendingString:string];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


@end
