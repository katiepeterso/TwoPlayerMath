//
//  Game.h
//  TwoPlayerMath
//
//  Created by Katherine Peterson on 2015-08-31.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Player;

@interface Game : NSObject

@property (nonatomic) int x;
@property (nonatomic) int y;

-(void)buildAnswerFrom:(int)selectedNumber;
-(int)checkAnswerforPlayer:(Player *)player;

@end
