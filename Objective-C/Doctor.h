//
//  Doctor.h
//  Objective-C
//
//  Created by Михаил Чертов on 28.12.2023.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject
@property (nonatomic, weak, nullable) id<DoctorDelegate> delegate;
- (void)prescribeMedication;
@end

NS_ASSUME_NONNULL_END
