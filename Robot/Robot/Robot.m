//
//  Robot.m
//  Robot
//
//  Created by Михаил Чертов on 20.01.2024.
//

#import "Robot.h"

@implementation Robot
- (instancetype)initWithName:(NSString *)name xCoord:(double)x yCoord:(double)y {
    self = [super init];
    if (self) {
        _name = name;
        _xCoord = x;
        _yCoord = y;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        _name = [coder decodeObjectForKey:@"name"];
        _xCoord = [coder decodeDoubleForKey:@"xCoordinate"];
        _yCoord = [coder decodeDoubleForKey:@"yCoordinate"];
    }
    return  self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeDouble:_xCoord forKey:@"xCoordinate"];
    [coder encodeDouble:_yCoord forKey:@"yCoordinate"];
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

@end
