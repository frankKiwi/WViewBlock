//
//  UITabBarItem+Kiwi.m
//  wKiwi
//
//  Created by LWW on 2017/8/1.
//  Copyright © 2017年 LWW. All rights reserved.
//

#import "UITabBar+Kiwi.h"
#import <objc/runtime.h>

static char identifier;

@implementation UITabBar (Kiwi)

- (void)addCallBack:(TabCallBack)block
{
    
    objc_setAssociatedObject(self, &identifier, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    
    [self addGestureRecognizer:tap];
    
}

- (void)tap:(UITapGestureRecognizer *)tapGeture
{
    TabCallBack action = objc_getAssociatedObject(self, &identifier);
    if (action) {
        action(self);
    }
}

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        [self swizzleMethod:@selector(layoutSubviewsNew) originalSelector:@selector(layoutSubviews)];
    });
}

+ (void)swizzleMethod:(SEL)swizzledSelector originalSelector:(SEL)originalSelector
{
    Class swizzledClass = [self class];
    
    Method swizzledMethod = class_getInstanceMethod(swizzledClass, swizzledSelector);
    IMP swizzledIMP = method_getImplementation(swizzledMethod);
    const char *swizzledType = method_getTypeEncoding(swizzledMethod);
    
    Method originalMethod = class_getInstanceMethod(swizzledClass, originalSelector);
    IMP originalIMP = method_getImplementation(originalMethod);
    const char *originalType = method_getTypeEncoding(originalMethod);
    
    class_replaceMethod(swizzledClass, swizzledSelector, originalIMP, originalType);
    class_replaceMethod(swizzledClass, originalSelector, swizzledIMP, swizzledType);
}

-(void)layoutSubviewsNew
{
    [self layoutSubviewsNew];
    
    //遍历判断self.subviews
    for (UIControl *tabBarBtn in self.subviews)
    {
        //判断是否是
        if ([tabBarBtn isKindOfClass:NSClassFromString(@"UITabBarButton")])
        {
            [tabBarBtn addTarget:self action:@selector(tabBarBtnDidClick:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

//添加动画
-(void)tabBarBtnDidClick:(UIControl *)tabBarButton
{
    //遍历出tabbar上的图片
    for (UIView *imageView in tabBarButton.subviews)
    {
        //判断图片是否是
        if ([imageView isKindOfClass:NSClassFromString(@"UITabBarSwappableImageView")])
        {
            imageView.transform = CGAffineTransformMakeScale(0.8, 0.8);
            
            //动画
            [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:9 options:0 animations:^{
                
                imageView.transform = CGAffineTransformMakeScale(1.0, 1.0);
                
            } completion:^(BOOL finished) {
                
            }];
            
            
        }
    }
}



@end
