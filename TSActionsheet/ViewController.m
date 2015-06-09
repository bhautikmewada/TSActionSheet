//
//  ViewController.m
//  TSActionsheet
//
//  Created by True Swan1 on 24/11/14.
//  Copyright (c) 2014 True Swan1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnActyionSheetTap:(UIButton *)sender {
    
    [TSActionsheet addActionSheet:@"ActionSheet" message:@"TEST" array:[NSArray arrayWithObjects:@"1", @"2", @"3", nil] view:self.view withDelegate:^(NSInteger index){
    
        NSLog(@"index %ld",(long)index);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
