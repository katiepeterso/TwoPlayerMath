//
//  Player.h
//  TwoPlayerMath
//
//  Created by Katherine Peterson on 2015-08-31.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) int currentLives;

-(instancetype)initWithLives:(int)lives;

@end
