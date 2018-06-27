//
//  UIImageView+Kiwi.m
//  LWW
//
//  Created by LWW on 2017/7/19.
//  Copyright © 2017年 LWW. All rights reserved.
//

#import "UIImageView+Kiwi.h"
#import <objc/runtime.h>

static char identifier;

@implementation UIImageView (Kiwi)

//添加事件

- (void)addClickMethod:(WCallBack)block
{
    objc_setAssociatedObject(self, &identifier, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];

    [self addGestureRecognizer:tap];

}

- (void)tap:(UITapGestureRecognizer *)gesture
{
    WCallBack action = objc_getAssociatedObject(self, &identifier);

    if (action)
    {
        action(self);
    }

}

@end
