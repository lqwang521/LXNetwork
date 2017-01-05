//
//  SecondTestApi.m
//  HTMINetworkDemo
//
//  Created by sharejoy_HTMI on 16-09-05.
//  Copyright © 2016年 wHTMI. All rights reserved.
//

#import "SecondTestApi.h"

#define kRecommend (@"http://api.zsreader.com/v2/pub/discovery/recommend")

@implementation SecondTestApi

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.paramSource = self;
    }
    return self;
}

- (HTMIBaseRequestType)requestType {
    return HTMIBaseRequestTypeGet;
}

- (BOOL)shouldCache {
    return NO;
}

- (NSString *)requestUrl {
    return kRecommend;
}

- (NSDictionary *)paramsForRequest:(HTMIBaseRequest *)request {
    NSInteger rand = arc4random() % 101;
    return @{@"rand":[NSString stringWithFormat:@"%zd", rand]};
}

- (void)beforePerformSuccessWithResponse:(HTMIResponse *)response {
    [super beforePerformSuccessWithResponse:response];
    
    self.dataModel = response.result;
}

@end
