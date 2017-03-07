//
//  GameViewController.m
//  17CardGame
//
//  Created by YuanLiang on 4/15/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "GameViewController.h"
#import "Card.h"
#import "Poker.h"
#import "Game.h"
@interface GameViewController ()
/*1*/@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *allButtons;
@property (nonatomic,strong)Poker *poker;
@property (nonatomic,strong)Game *game;
@property (weak, nonatomic) IBOutlet UILabel *scroeLabel;
@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.poker = [[Poker alloc]init];
    self.game = [[Game alloc]initWithPoker:self.poker andNumber:self.allButtons.count];
    [self showCards];
 
}



//界面刷新，将allRondom中的纸牌对象一一显示到12个按钮上
-(void)showCards
{
    for (NSInteger i = 0; i < self.allButtons.count; i++)
    {
        UIButton * button = self.allButtons[i];
        Card *card = self.game.allRondomCards[i];
        
//      NSString * title = [card.suit stringByAppendingString:card.rank];
        [button setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        
        [button setBackgroundImage:[UIImage imageNamed:[self imageNameForCard:card]]forState:UIControlStateNormal];
        
        button.enabled = !card.isMatched;
        
        self.scroeLabel.text = [NSString stringWithFormat:@"Score:%ld",self.game.score];
    }
}

-(NSString *)titleForCard:(Card *)card
{
    return card.isFaceOn ? card.cardInfo : @"" ;
}


-(NSString *)imageNameForCard:(Card *)card
{
    return card.isFaceOn ? @"cardfront.png" : @"cardback.png";
}

- (IBAction)clickCardButton:(UIButton *)sender {
 /*2*/    NSInteger index = [self.allButtons indexOfObject:sender];
   
    
    [self.game tagCardAtIndex: index];
    
    [self showCards];
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
