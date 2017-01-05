//
//  SecondTestApi.h
//  HTMINetworkDemo
//
//  Created by sharejoy_HTMI on 16-09-05.
//  Copyright © 2016年 wHTMI. All rights reserved.
//

#import "HTMIBaseRequest.h"

@interface SecondTestApi : HTMIBaseRequest <HTMIBaseRequestDelegate, HTMIBaseRequestParamDelegate>

@property (nonatomic, strong) id dataModel;

@end
