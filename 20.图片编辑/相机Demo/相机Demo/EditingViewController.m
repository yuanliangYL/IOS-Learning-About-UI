//
//  EditingViewController.m
//  相机Demo
//
//  Created by YuanLiang on 6/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "EditingViewController.h"

@interface EditingViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *chooseIagmeView;
@property (weak, nonatomic) IBOutlet UIImageView *frameView;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *mainButttons;

@end

@implementation EditingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.chooseIagmeView.image = self.editingImage;
}
- (IBAction)clickToEditing:(UIButton *)sender {
    for (UIButton *btn in self.mainButttons) {
        if ([btn isEqual:sender]) {
            btn.selected = !btn.selected;
        }
        else{
            btn.selected = NO;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
