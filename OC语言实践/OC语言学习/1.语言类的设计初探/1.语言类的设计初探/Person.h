//
//  Person.h
//  1.语言类的设计初探
//
//  Created by Mac on 17/2/19.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
@public     //自己和外部成员都可以调用
    int age;
@private    //只有自己的子函数可以调用
    float height;
@protected  //子类和内部都可以调用
    NSString *name;
}

- (id) init;
- (id) initWithAge:(int)newAge;
- (id) initWithAge:(int)newAge andHeight:(float)newHeight;

- (void) setAge:(int)newAge;
- (void) setHeight:(float)newHight;
- (void) setAge:(int)newAge andHeight:(float)newHeight;

- (int) getAge;
- (float) getHeight;
- (NSString *) getName;

@end
