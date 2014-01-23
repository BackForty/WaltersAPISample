//
//  ViewController.m
//  WaltersAPISample
//
//  Created by Ed Schmalzle on 1/23/14.
//  Copyright (c) 2014 Back Forty. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    TWAClient *client = [[TWAClient alloc] initWithAPIKey: @"sOK3xgGkv3ooeK4J9P5yKINSs8vSgWEMSeLp6TLUkT6iX7B5hraqLDEZ1sBpln3O"];
    TWAPaginationOptions *paginationOptions = [TWAPaginationOptions defaultPaginationOptions];
    [client getObjectsWithPaginationOptions: paginationOptions
                                    success: ^(NSArray* objectList) {
                                        NSLog(@"I win");
                                    } fail: ^(NSURLResponse *response, NSError *error) {
                                        NSLog(@"I lose");
                                    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
