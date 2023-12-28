//
//  Doctor.m
//  Objective-C
//
//  Created by Михаил Чертов on 28.12.2023.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor
- (void)prescribeMedication {
    NSLog(@"Доктор дает медикамент пациенту.");
    [self.delegate takeMedicine];
}
@end
