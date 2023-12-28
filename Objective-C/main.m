//
//  main.m
//  Objective-C
//
//  Created by Михаил Чертов on 21.12.2023.
//


#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor new];
        Patient *patient = [Patient new];
        doctor.delegate = patient;
        [doctor prescribeMedication];
    }
    return 0;
}
