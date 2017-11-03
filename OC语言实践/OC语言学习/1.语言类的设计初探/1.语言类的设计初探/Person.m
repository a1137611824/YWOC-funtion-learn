//
//  Person.m
//  1.语言类的设计初探
//
//  Created by Mac on 17/2/19.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    //成员变量
}

- (id) init
{
    if (self = [super init]) {
        age = 20;
        height = 178.0;
        name = @"wang";
    }
    return self;
}

- (id) initWithAge:(int)newAge
{
    if (self = [super init]){
        age = newAge;
        height = 178.0;
        name = @"wang";
    }
    return self;
}

-(id) initWithAge:(int)newAge andHeight:(float)newHeight
{
    if (self = [super init]) {
        age = newAge;
        height = newHeight;
        name = @"wang";
    }
    return self;
}


- (void) setAge:(int)newAge
{
    age = newAge;
}

- (void) setHeight:(float)newHight
{
    height = newHight;
}

- (void) setAge:(int)newAge andHeight:(float)newHeight
{
    age = newAge;
    height = newHeight;
}

- (int)getAge
{
    return age;
}

- (NSString *)getName
{
    return name;
}

- (float) getHeight
{
    return height;
}





@end
