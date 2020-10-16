//
//  Target_A.m
//  A_section
//
//  Created by hdk on 2020/10/16.
//  Copyright © 2020 hdk. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"

@implementation Target_A

- (UIViewController *)Action_Category_ViewController:(NSDictionary *)params {
//    typedef void (^CallbackType)(NSString *);
//    CallbackType callback = params[@"callback"];
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

- (UIViewController *)Action_Extension_ViewController:(NSDictionary *)params {
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
