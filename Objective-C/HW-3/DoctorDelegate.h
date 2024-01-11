//
//  DoctorDelegate.h
//  Objective-C
//
//  Created by Михаил Чертов on 28.12.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DoctorDelegate <NSObject>
- (void)takeMedicine;
@end

NS_ASSUME_NONNULL_END
