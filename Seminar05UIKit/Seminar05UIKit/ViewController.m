//
//  ViewController.m
//  Seminar05UIKit
//
//  Created by Daniil Rassadin on 13/1/24.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self performLoadingForGetRequest];
    [self performLoadingForPostRequest];
}

- (void)performLoadingForGetRequest {
    [self.loader performGetRequestFromURL:@"https://postman-echo.com/get" arguments:@{@"var1": @"first", @"var2": @"second"} block:^(NSDictionary *dictionary, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            NSMutableString *outputString = [NSMutableString string];
            [dictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                [outputString appendFormat:@"%@: %@\n", key, obj];
            }];
            self.textView.text = outputString;
            NSLog(@"%@", dictionary);
        });
    }];
}

- (void)performLoadingForPostRequest {
    [self.loader performPostRequestFromURL:@"https://postman-echo.com/post" arguments:@{@"var1": @"first", @"var2": @"second"} block:^(NSDictionary *dictionary, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            NSMutableString *outputString = [NSMutableString string];
            [dictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                [outputString appendFormat:@"%@: %@\n", key, obj];
            }];
            self.textView.text = outputString;
            NSLog(@"%@", self.textView);
        });
    }];
}

@end
