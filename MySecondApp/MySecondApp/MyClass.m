//
//  MyClass.m
//  MySecondApp
//
//  Created by 杨蕾 on 2019/7/18.
//  Copyright © 2019 lxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
#import <UIKit/UIKit.h>

@implementation MyClass

-(CGFloat) summation:(CGFloat)num1 andnum2:(CGFloat)num2{
    CGFloat count = num1+num2;
    return count;
}

-(NSInteger) reduce:(NSInteger)num1 andnum2:(NSInteger)num2{
    NSInteger result = num1-num2;
    NSString *str = @"test";
    return result;
}


-(NSString*) stitch:(NSString*)str1 andstr2:(NSString*) str2{
    NSString *result = [str1 stringByAppendingString:str2];
    NSString *str3= @"333";
    return [result stringByAppendingString:str3];
}

- (NSString*) combinationMutableArray:(NSMutableArray*) mutableArray{
    NSString *str = @"";
    for (NSInteger i = 0; i<mutableArray.count; i++) {
        str = [str stringByAppendingString:mutableArray[i]];
    }
    return str;
}

- (NSString*) combinationArray:(NSArray*) array{
    NSString *str =  @"";
    for (NSInteger i = 0; i<array.count; i++) {
        str = [str stringByAppendingString:array[i]];
    }
    return str;
}

- (NSString*) combinationMutableTable:(NSMutableDictionary*) mutableMap{
    NSString *str =  @"";
    NSArray *array = mutableMap.allKeys;
    for(NSInteger i=0;i<array.count;i++){
        NSString *key = array[i];
        NSString *value = [mutableMap objectForKey:key];
        str = [str stringByAppendingString:value];
    }
    return str;
}

+ (NSString*) combinationTable:(NSDictionary*) map{
    NSString *str =  @"";
    NSArray *array = map.allKeys;
    for(NSInteger i=0;i<array.count;i++){
        NSString *key = array[i];
        NSString *value = [map objectForKey:key];
        str = [str stringByAppendingString:value];
    }
    return str;
}
@end
