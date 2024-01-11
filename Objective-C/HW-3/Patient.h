//
//  Patient.h
//  Objective-C
//
//  Created by Михаил Чертов on 28.12.2023.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"
#import "Doctor.h"
NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject<DoctorDelegate>
@property (nonatomic, weak, nullable) Doctor *doctor;
-(void)takeMedication;
@end

NS_ASSUME_NONNULL_END
