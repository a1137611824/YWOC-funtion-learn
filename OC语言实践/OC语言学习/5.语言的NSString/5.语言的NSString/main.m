//
//  main.m
//  5.语言的NSString
//
//  Created by Mac on 17/2/19.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"wangge";
        NSString *str2 = [[NSString alloc]initWithString:str1];
        NSString *str3 = [[NSString alloc]initWithFormat:@"I am %@ , you are %c",@"wangge" , 'y'];
        NSString *str4 = [[NSString alloc]initWithUTF8String:"wo shi wangge"];
        
//        NSLog(@"str1 is -%@" , str1);
//        NSLog(@"str2 is -%@" , str2);
//        NSLog(@"str3 is -%@" , str3);
//        NSLog(@"str4 is -%@" , str4);
        
        NSString *str5 = [NSString stringWithFormat:@"I am %@ , you are %c",@"wangge" , 'y'];
        NSString *str6 = [NSString stringWithUTF8String:"wo shi wangge"];
        NSString *str7 = [NSString stringWithString:str1];
        
        NSLog(@"str5 is -%@" , str5);
        NSLog(@"str6 is -%@" , str6);
        NSLog(@"str7 is -%@" , str7);
    }
    return 0;
}
