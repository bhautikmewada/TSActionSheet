# TSActionSheet
just call block method to fill UIActionSheet

/**  block for actionsheet block*/

```+(void)addActionSheet:(NSString *)title message:(NSString *)alertBody array:(NSArray *)array view:(UIView*)view withDelegate:(void(^)(NSInteger index))action;```

/** property for actionsheet delegate block*/

```@property(nonatomic,copy) void (^actionSheet)(NSInteger index);```

/** How to use*/

    [TSActionsheet addActionSheet:@"ActionSheet" message:@"TEST" array:[NSArray arrayWithObjects:@"1", @"2", @"3", nil]     view:self.view withDelegate:^(NSInteger index){
    
        NSLog(@"index %ld",(long)index);
        
    }];```

For more support you can mail me: bhautik.mewada@gmail.com. True Swan Software.
