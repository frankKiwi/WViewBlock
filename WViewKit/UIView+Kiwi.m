//
//  UIView+Kiwi.m
//
//
//  Created by LWW on 2017/7/21.
//  Copyright © 2017年 LWW. All rights reserved.
//

#import "UIView+Kiwi.h"
#import <objc/runtime.h>

static char identifier;

@implementation UIView (Kiwi)


- (void)addCallBack:(W_CallBack)block
{

    self.userInteractionEnabled = YES;

    objc_setAssociatedObject(self, &identifier, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];

    [self addGestureRecognizer:tap];

}

- (void)tap:(UITapGestureRecognizer *)tapGeture
{
    W_CallBack action = objc_getAssociatedObject(self, &identifier);
    if (action) {
        action(self);
    }
}


@end
