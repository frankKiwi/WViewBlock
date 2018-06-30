//
//  UILabel+Kiwi.m
//  LWW
//
//  Created by LWW on 2017/7/19.
//  Copyright © 2017年 LWW. All rights reserved.
//

#import "UILabel+Kiwi.h"
#import <objc/runtime.h>

static char identifier;

@implementation UILabel (Kiwi)

- (void)addCallBack:(LbCallBack)block
{

    self.userInteractionEnabled = YES;

    objc_setAssociatedObject(self, &identifier, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];

    [self addGestureRecognizer:tap];

}



- (void)tap:(UITapGestureRecognizer *)tapGeture
{
    LbCallBack action = objc_getAssociatedObject(self, &identifier);
    if (action) {
        action(self);
    }
}



@end
