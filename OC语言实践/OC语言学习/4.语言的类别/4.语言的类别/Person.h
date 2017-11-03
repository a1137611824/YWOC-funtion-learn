//
//  Person.h
//  4.语言的类别
//
//  Created by Mac on 17/2/19.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

- (void) study;
- (void) sleep;
- (void) run;

@end
