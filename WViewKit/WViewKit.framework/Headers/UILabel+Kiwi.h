//
//  UILabel+Kiwi.h
//  LWW
//
//  Created by LWW on 2017/7/19.
//  Copyright © 2017年 LWW. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^LbCallBack) (UILabel *wLabel);

@interface UILabel (Kiwi)

/*

  添加事件

 */

- (void)addCallBack:(LbCallBack)block;





@end
