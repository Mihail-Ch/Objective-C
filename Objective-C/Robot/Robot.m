//
//  Robot.m
//  Objective-C
//
//  Created by Михаил Чертов on 11.01.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y name:(NSString *)name {
    self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
        _name = name;
    }
    return self;
}

@end
