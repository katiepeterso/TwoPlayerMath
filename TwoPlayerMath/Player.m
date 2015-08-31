//
//  Player.m
//  TwoPlayerMath
//
//  Created by Katherine Peterson on 2015-08-31.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)initWithLives:(int)lives
{
        self = [super init];
        if (self) {
            self.currentLives = lives;
        }
        return self;
    }

@end
