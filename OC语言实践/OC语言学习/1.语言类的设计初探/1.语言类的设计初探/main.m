//
//  main.m
//  1.语言类的设计初探
//
//  Created by Mac on 17/2/19.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        NSLog(@"age is -%d ,height is -%f, name is -%@", [p getAge], [p getHeight], [p getName]);
        [p setAge:15];
        [p setAge:20 andHeight:140];
        [p setHeight:150];
        NSLog(@"age is -%d ,height is -%f, name is -%@", [p getAge], [p getHeight], [p getName]);
    }
    return 0;
}
