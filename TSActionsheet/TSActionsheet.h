//
//  TSActionsheet.h
//  TSActionsheet
//
//  Created by True Swan1 on 24/11/14.
//  Copyright (c) 2014 True Swan1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TSActionsheet : NSObject<UIActionSheetDelegate>

+(void)addActionSheet:(NSString *)title message:(NSString *)alertBody array:(NSArray *)array view:(UIView*)view withDelegate:(void(^)(NSInteger index))action;

@property(nonatomic,copy) void (^actionSheet)(NSInteger index);
@end
