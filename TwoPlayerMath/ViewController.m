//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Katherine Peterson on 2015-08-31.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "Game.h"

@interface ViewController ()

@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
@property (nonatomic) Game *game;
@property (strong, nonatomic) IBOutlet UILabel *player1Score;
@property (strong, nonatomic) IBOutlet UILabel *player2Score;
@property (strong, nonatomic) IBOutlet UILabel *mathQuestion;
@property (strong, nonatomic) Player *currentPlayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.game = [Game new];
    self.player1 = [[Player alloc]initWithLives:3];
    self.player2 = [[Player alloc]initWithLives:3];
    self.player1Score.text = @"Player 1: 3";
    self.player2Score.text = @"Player 2: 3";
    self.currentPlayer = self.player1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)zero:(id)sender {
    [self.game buildAnswerFrom:0];
}
- (IBAction)one:(id)sender {
    [self.game buildAnswerFrom:1];
}
- (IBAction)two:(id)sender {
    [self.game buildAnswerFrom:2];
}
- (IBAction)three:(id)sender {
    [self.game buildAnswerFrom:3];
}
- (IBAction)four:(id)sender {
    [self.game buildAnswerFrom:4];
}
- (IBAction)five:(id)sender {
    [self.game buildAnswerFrom:5];
}
- (IBAction)six:(id)sender {
    [self.game buildAnswerFrom:6];
}
- (IBAction)seven:(id)sender {
    [self.game buildAnswerFrom:7];
}
- (IBAction)eight:(id)sender {
    [self.game buildAnswerFrom:8];
}
- (IBAction)nine:(id)sender {
    [self.game buildAnswerFrom:9];
}

- (IBAction)enterAnswer:(id)sender {
    [self.game checkAnswerforPlayer:self.currentPlayer];
}

@end
