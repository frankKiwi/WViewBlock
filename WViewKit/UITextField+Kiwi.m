//
//  UITextField+Kiwi.m
//  UNShop
//
//  Created by LWW on 2017/12/25.
//  Copyright © 2017年 UN-ING. All rights reserved.
//

#import "UITextField+Kiwi.h"

@implementation UITextField (Kiwi)
- (void)SetNumBer{
    self.keyboardType = UIKeyboardTypeNumberPad;
}
- (void)SetDoubleNumBer{
    self.keyboardType = UIKeyboardTypeDecimalPad;
}
@end
