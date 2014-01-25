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
    
    //NSString *myAPIKey = @"";
    
    TWAClient *client = [[TWAClient alloc] initWithAPIKey: myAPIKey];
    TWARequestOptions *requestOptions = [[TWARequestOptions alloc] init];
    
    [client getObjectsWithRequestOptions: requestOptions
                                    success: ^(NSArray* objectList) {
                                        // This is where you'd operate on the returned object list
                                    } fail: ^(NSURLResponse *response, NSError *error) {
                                        // This is where you'd handle any error in getting the objects
                                    }];
    
    [client getObjectByID: @"2" onSuccess:^(id item) {
        // this is where you'd operate on the returned object
    } fail:^(NSURLResponse *response, NSError *error) {
        // this is where you'd handle any error in getting the objects
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
