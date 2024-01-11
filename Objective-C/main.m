//
//  main.m
//  Objective-C
//
//  Created by Михаил Чертов on 21.12.2023.
//


#import <Foundation/Foundation.h>
#import "Robot.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        
        [robot run:@"up"];
        NSLog(@"Current position: (%ld, %ld)", robot.x, robot.y);
        
        [robot run:@"right"];
        NSLog(@"Current position: (%ld, %ld)", robot.x, robot.y);
        
        [robot run:@"down"];
        NSLog(@"Current position: (%ld, %ld)", robot.x, robot.y);
        
        [robot run:@"left"];
        NSLog(@"Current position: (%ld, %ld)", robot.x, robot.y);
        
    }
    return 0;
}
