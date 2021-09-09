//
//  TestRequest.m
//  ModuleA
//
//  Created by ffzp on 2021/9/4.
//

#import "TestRequest.h"

@implementation TestRequest

-(NSString *)baseUrl{
    return @"https://dog.ceo";
}


-(NSString *)requestUrl{
    return @"/api/breeds/image/random";
}


@end
