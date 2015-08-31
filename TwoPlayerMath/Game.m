//
//  Game.m
//  TwoPlayerMath
//
//  Created by Katherine Peterson on 2015-08-31.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Game.h"
#import "Player.h"

@interface Game()

@property (nonatomic,strong) NSMutableArray *answer;

@end

@implementation Game

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateMathQuestion];
        self.answer = [NSMutableArray new];
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

-(int)checkAnswerforPlayer:(Player *)player {
    NSString *stringAnswer = [[self.answer valueForKey:@"description"] componentsJoinedByString:@""];
    int finalAnswer = [stringAnswer intValue];
    
    if (finalAnswer != self.x+self.y) {
        player.currentLives = player.currentLives - 1;
    }
    return player.currentLives;
}

@end
