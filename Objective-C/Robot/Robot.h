//
//  Robot.h
//  Objective-C
//
//  Created by Михаил Чертов on 11.01.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot: NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithX:(CGFloat)x y:(CGFloat)y name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
