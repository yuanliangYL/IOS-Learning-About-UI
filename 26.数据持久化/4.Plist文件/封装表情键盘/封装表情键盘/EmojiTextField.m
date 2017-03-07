//
//  EmojiTextField.m
//  封装表情键盘
//
//  Created by YuanLiang on 6/4/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "EmojiTextField.h"
#import "ViewController.h"
@interface EmojiTextField()
@property(nonatomic,strong)NSArray *faceArr;
@property (weak, nonatomic) IBOutlet EmojiTextField *myEmoji;

@end
@implementation EmojiTextField

-(void)awakeFromNib{
    [super awakeFromNib];
    [self setupEmojiKeyBoard];
}

-(void)setupEmojiKeyBoard{

    UIScrollView *faceSV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 667-216, 375, 216)];
    
    self.inputView = faceSV;
//    self.keyboardType
    
    //添加表情图片
    NSString *path = [[NSBundle mainBundle]pathForResource:@"emoticons" ofType:@"plist"];
    NSArray *faceArr = [NSArray arrayWithContentsOfFile:path];
    self.faceArr = faceArr;
    
    ViewController *vc = [ViewController new];
    float w = vc.view.frame.size.width/8.0;
    
    
    //
    for (int i=0; i<faceArr.count; i++) {
        UIButton *faceBtn = [[UIButton alloc]initWithFrame:CGRectMake(i%8*w, i/8*w, w, w)];
        
        NSDictionary *faceDic = faceArr[i];
        NSString *imageName = faceDic[@"png"];
        
        [faceBtn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        faceBtn.tag = i;
        [faceBtn addTarget:self action:@selector(choseEmojiAction:) forControlEvents:UIControlEventTouchUpInside];
        [faceSV addSubview:faceBtn];
    }
    
    long line = faceArr.count%8==0?faceArr.count/8 : faceArr.count/8+1;
    //sv内容大小
    [faceSV setContentSize:CGSizeMake(0, line*w)];

}

-(void)choseEmojiAction:(UIButton *)sender
{
    NSDictionary *faceDic = self.faceArr[sender.tag];
    
    NSString *string  = faceDic[@"chs"];
    
    self.myEmoji.text = [self.myEmoji.text stringByAppendingString:string ];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self endEditing:YES];
}
@end
