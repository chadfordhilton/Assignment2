//
//  Pumpkin.m
//  Fruit
//
//  Created by Chadford Hilton on 1/30/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "Pumpkin.h"

@implementation Pumpkin

- init{
    [self setName:@"Pumpkin"];
    [self setShape:@"Oval"];
    [self setColor:@"Orange"];
    return self;
}

- (NSString *)printSelf{
    return [[NSString alloc] initWithFormat:@"I am a %@ my color is %@ and my shape is %@", self.name, self.color, self.shape];
}


@end
