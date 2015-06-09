//
//  TSActionsheet.m
//  TSActionsheet
//
//  Created by True Swan1 on 24/11/14.
//  Copyright (c) 2014 True Swan1. All rights reserved.
//

#import "TSActionsheet.h"

static TSActionsheet *actionSheet;

@implementation TSActionsheet

/** Create Singalton Object */
+ (instancetype)shareInstance
{
    if(!actionSheet)
    {
        actionSheet = [TSActionsheet new];
    }
    return actionSheet;
}


+(void)addActionSheet:(NSString *)title message:(NSString *)alertBody array:(NSArray *)array view:(UIView*)view withDelegate:(void(^)(NSInteger index))action
{
    
    UIActionSheet *sheet = [[UIActionSheet alloc]initWithTitle:title delegate:[TSActionsheet shareInstance] cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:nil];
    
    for(NSString *title in array){
        
        [sheet addButtonWithTitle:title];
    }
    
    
    [sheet setCancelButtonIndex:[array count] - 1];
    [sheet showInView:view];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 3.0 ||
        UIDeviceOrientationIsPortrait([[UIDevice currentDevice] orientation])) {
        [sheet showInView:view];
    } else {
        [sheet showInView:view];
    }
    [TSActionsheet shareInstance].actionSheet = action;
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    self.actionSheet(buttonIndex);
}


@end
