//
//  MyClass.h
//  MySecondApp
//
//  Created by 杨蕾 on 2019/7/18.
//  Copyright © 2019 lxl. All rights reserved.
//

#ifndef MyClass_h
#define MyClass_h
#import <UIKit/UIKit.h>


#endif /* MyClass_h */
@interface MyClass:NSObject{
   
}
-(CGFloat) summation:(CGFloat)num1 andnum2:(CGFloat)num2;

- (NSInteger) reduce:(NSInteger)num1 andnum2:(NSInteger) num2;

- (NSString*) stitch:(NSString*)str1 andstr2:(NSString*) str2;

- (NSString*) combinationMutableArray:(NSMutableArray*) mutableArray;

- (NSString*) combinationArray:(NSArray*) mutableArray;

- (NSString*) combinationMutableTable:(NSMutableDictionary*) mutableMap;

+ (NSString*) combinationTable:(NSDictionary*) map;

@end
