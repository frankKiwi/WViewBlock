//
//  UITableView+Header.m
//  DMBee
//
//  Created by LWW on 2017/12/7.
//  Copyright © 2017年 UN-ING. All rights reserved.
//

#import "UITableView+Header.h"
#define isIOS11 ([[UIDevice currentDevice].systemVersion floatValue] >= 11)

@implementation UITableView (Header)
//2017-12-07修正
- (void)setHeader{
    if(isIOS11){
        self.estimatedRowHeight = 0;
        self.estimatedSectionHeaderHeight = 0;
        self.estimatedSectionFooterHeight = 0;
    }
}
- (void)SetHight{
    if (@available(iOS 11.0, *)) {
        self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
    }

}
- (BOOL)TableViewisIOS11{
    if (isIOS11) {
        return YES;
    }
    return NO;
}


- (void)dx_hideTableEmptyDataSeparatorLine {
    UIView *view = [[UIView alloc] init];
    [view setBackgroundColor:[UIColor clearColor]];
    self.tableFooterView = view;
}
// 多添加一个滚动到顶部的方法,方便用
- (void)dx_scrollToTop {
    [self setContentOffset:CGPointZero animated:YES];
}

- (void)starAnimationWith:(XSTableViewAnimationType)animationType TableView:(UITableView *)tableView {
    [TableViewAnimationKit showWithAnimationType:animationType tableView:tableView];
}
@end
