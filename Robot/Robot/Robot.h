//
//  Robot.h
//  Robot
//
//  Created by Михаил Чертов on 20.01.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject

@property (nonatomic, readonly) double xCoord;
@property (nonatomic, readonly) double yCoord;
@property (nonatomic, readonly) NSString *name;

- (instancetype)initWithName: (NSString *)name xCoord: (double)x yCoord: (double)y;

@end

NS_ASSUME_NONNULL_END
