//
//  UICollectionView+SetIPhoneX.m
//  UNShop
//
//  Created by LWW on 2018/1/31.
//  Copyright © 2018年 UN-ING. All rights reserved.
//

#import "UICollectionView+SetIPhoneX.h"
#define kDevice_Is_iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
@implementation UICollectionView (SetIPhoneX)
- (void)SetHight{
    
    if (@available(iOS 11.0, *)) {
        self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    }
}
@end
