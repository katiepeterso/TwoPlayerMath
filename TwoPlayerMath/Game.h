//
//  Game.h
//  TwoPlayerMath
//
//  Created by Katherine Peterson on 2015-08-31.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

@property (nonatomic) int x;
@property (nonatomic) int y;

-(void)generateMathQuestion;
-(void)buildAnswerFrom:(int)selectedNumber;
-(int)checkAnswer;
-(void)switchPlayers;
-(NSString*)resetScoreLabelsForPlayer1;
-(NSString*)resetScoreLabelsForPlayer2;
-(NSString*)resetMathQuestionLabel;

@end
