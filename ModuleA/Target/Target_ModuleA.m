//
//  Target_ModuleA.m
//  ModuleA
//
//  Created by ffzp on 2021/6/24.
//

#import "Target_ModuleA.h"
#import "AViewController.h"
@implementation Target_ModuleA
-(UIViewController *)Action_viewController:(NSDictionary *)params {
    AViewController *VC = [[AViewController alloc] init];
    return VC;
}
@end

