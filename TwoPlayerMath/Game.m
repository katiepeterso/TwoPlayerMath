//
//  Game.m
//  TwoPlayerMath
//
//  Created by Katherine Peterson on 2015-08-31.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Game.h"

@interface Game()

@property (nonatomic,strong) NSMutableArray *answer;
@property (nonatomic, strong) NSString *player1Name;
@property (nonatomic, strong) NSString *player2Name;
@property (nonatomic) int player1CurrentLives;
@property (nonatomic) int player2CurrentLives;
@property (nonatomic, strong) NSString *currentPlayer;

@end

@implementation Game

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateMathQuestion];
        self.answer = [NSMutableArray new];
        self.player1CurrentLives = 3;
        self.player2CurrentLives = 3;
        self.player1Name = @"Player 1";
        self.player2Name = @"Player 2";
        self.currentPlayer = @"Player 1";
    }
    return self;
}

-(void)generateMathQuestion {
    
    self.x = arc4random() % 20;
    self.y = arc4random() % 20;
}

-(void)buildAnswerFrom:(int)selectedNumber {
    NSNumber *number = [NSNumber numberWithInt:selectedNumber];
    [self.answer addObject:number];
}

-(int)checkAnswer {
    NSString *stringAnswer = [[self.answer valueForKey:@"description"] componentsJoinedByString:@""];
    int finalAnswer = [stringAnswer intValue];
    
    if (finalAnswer != self.x+self.y) {
        player.currentLives = player.currentLives - 1;
    }
    return player.currentLives;
}

-(void)resetLabels {
    self.player1Score.text = [@"Player 1: " stringByAppendingString:[NSString stringWithFormat:@"%d",self.player1.currentLives]];
    self.player2Score.text = [@"Player 2: " stringByAppendingString:[NSString stringWithFormat:@"%d",self.player2.currentLives]];
    
    if ([self.currentPlayer isEqual:self.player1]) {
        self.currentPlayer = self.player2;
        self.mathQuestion.text = [[[[@"Player 2: " stringByAppendingString:[NSString stringWithFormat:@"%d", self.game.x]] stringByAppendingString:@" + " ] stringByAppendingString:[NSString stringWithFormat:@"%d", self.game.y]]stringByAppendingString:@"?"];
    }
    else if ([self.currentPlayer isEqual:self.player2]) {
        self.currentPlayer = self.player1;
        self.mathQuestion.text = [[[[@"Player 1: " stringByAppendingString:[NSString stringWithFormat:@"%d", self.game.x]] stringByAppendingString:@" + " ] stringByAppendingString:[NSString stringWithFormat:@"%d", self.game.y]]stringByAppendingString:@"?"];
    }
}


@end
