//
//  main.m
//  2.语言类的设计
//
//  Created by Mac on 17/2/19.
//  Copyright © 2017年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mac.h"
#import "XiaoMing.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        XiaoMing *XM = [[XiaoMing alloc]init];
        Mac *mac = [[Mac alloc]init];
        [XM studyOCWith:mac];
    }
    return 0;
}
