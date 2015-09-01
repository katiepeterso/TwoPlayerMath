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
    [self.answer removeAllObjects];
}


-(void)buildAnswerFrom:(int)selectedNumber {
    NSNumber *number = [NSNumber numberWithInt:selectedNumber];
    [self.answer addObject:number];
}


-(int)checkAnswer {
    NSString *stringAnswer = [self.answer componentsJoinedByString:@""];
    int finalAnswer = [stringAnswer intValue];
    
    if ([self.currentPlayer isEqualToString:@"Player 1"]) {
        if (finalAnswer != self.x+self.y) {
            self.player1CurrentLives =self.player1CurrentLives - 1;
        }
        return self.player1CurrentLives;
    }
    else {
        if (finalAnswer != self.x+self.y) {
            self.player2CurrentLives =self.player2CurrentLives - 1;
        }
        return self.player2CurrentLives;
    }
}


-(void)switchPlayers {
    if ([self.currentPlayer isEqualToString:@"Player 1"]) {
        self.currentPlayer = @"Player 2";
    }
    else if ([self.currentPlayer isEqualToString:@"Player 2"]) {
        self.currentPlayer = @"Player 1";
    }

}

-(NSString*)resetScoreLabelsForPlayer1 {
    if (self.player1CurrentLives==0) {
        return @"Game Over! Player 2 wins.";
    }
    else {
        return [@"Player 1: " stringByAppendingString:[NSString stringWithFormat:@"%d",self.player1CurrentLives]];
    }
}

-(NSString*)resetScoreLabelsForPlayer2 {
    if (self.player2CurrentLives==0) {
        return @"Game Over! Player 1 wins.";
    }
    else {
        return [@"Player 2: " stringByAppendingString:[NSString stringWithFormat:@"%d",self.player2CurrentLives]];
    }
}

-(NSString*)resetMathQuestionLabel {
    if ([self.currentPlayer isEqualToString:@"Player 1"]) {
        return [[[[@"Player 1: " stringByAppendingString:[NSString stringWithFormat:@"%d", self.x]] stringByAppendingString:@" + " ] stringByAppendingString:[NSString stringWithFormat:@"%d", self.y]]stringByAppendingString:@"?"];
    }
    else {
        return [[[[@"Player 2: " stringByAppendingString:[NSString stringWithFormat:@"%d", self.x]] stringByAppendingString:@" + " ] stringByAppendingString:[NSString stringWithFormat:@"%d", self.y]]stringByAppendingString:@"?"];
    }
}



@end
