//
//  UIButton+Kiwi.m
//  UNShop
//
//  Created by LWW on 2017/12/25.
//  Copyright © 2017年 UN-ING. All rights reserved.
//

#import "UIButton+Kiwi.h"
#import <objc/runtime.h>

static char identifier;

@implementation UIButton (Kiwi)
//添加事件


- (void)addClickMethod:(WBTnCallBack)block
{
    objc_setAssociatedObject(self, &identifier, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];

    [self addGestureRecognizer:tap];

}

- (void)tap:(UITapGestureRecognizer *)gesture
{
    WBTnCallBack action = objc_getAssociatedObject(self, &identifier);

    if (action)
    {
        action(self);
    }
}

 
@end
