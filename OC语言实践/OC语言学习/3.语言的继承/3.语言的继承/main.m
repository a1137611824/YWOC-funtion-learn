//
//  main.m
//  3.语言的继承
//
//  Created by Mac on 17/2/19.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Person: NSObject
{
    NSString *name;
    int age;
    float height;
}

- (void) sleep;
- (void) study;
- (NSString *) getName;

@end

@implementation Person

- (void) sleep
{
    NSLog(@"sleep");
}

- (void) study
{
    NSLog(@"study");
}

- (NSString *) getName
{
    return name;
}

@end

@interface XiaoMing : Person

- (void) setName:(NSString *)newName;
- (void) setAge:(int)newAge;

@end

@implementation XiaoMing

- (void) setName:(NSString *)newName
{
    name = newName;
}

- (void) setAge:(int)newAge
{
    age = newAge;
}



@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        XiaoMing *xm = [[XiaoMing alloc]init];
        [xm setName:@"www"];
        NSLog(@"%@",[xm getName]);
        [xm sleep];
        [xm study];
        
    }
    return 0;
}
