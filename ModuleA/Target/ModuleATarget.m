//
//  ModuleATarget.m
//  ModuleA
//
//  Created by ffzp on 2021/6/24.
//

#import "ModuleATarget.h"
#import "AViewController.h"
@implementation ModuleATarget
-(UIViewController *)Action_viewController{
    AViewController *VC = [[AViewController alloc] init];
    return VC;
}
@end
