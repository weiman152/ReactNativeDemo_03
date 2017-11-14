//
//  RNViewController.m
//  TestRNAppTwo
//
//  Created by weiman on 17/9/8.
//  Copyright © 2017年 weiman. All rights reserved.
//

#import "RNViewController.h"
#import <React/RCTRootView.h>

@interface RNViewController ()

@end

@implementation RNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initRN];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initRN{
    NSLog(@"RN页面");
    NSURL *jsCodeLocation = [NSURL
                             URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios"];
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                         moduleName        : @"MyReactNativeApp"
                         initialProperties :
    @{
         @"scores" : @[
                       @{
                          @"name" : @"Alex",
                          @"value": @"42"
                        },
                     @{
                          @"name" : @"Joel",
                          @"value": @"10"
                      }
                    ]
       }
                          launchOptions    : nil];
    self.view = rootView;
    rootView.backgroundColor = [UIColor whiteColor];
}

@end
