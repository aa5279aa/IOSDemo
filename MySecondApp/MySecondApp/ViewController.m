//
//  ViewController.m
//  MySecondApp
//
//  Created by 杨蕾 on 2019/7/18.
//  Copyright © 2019 lxl. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"
#import "ComputerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MyClass *objectName = [[MyClass alloc]init];
    NSInteger count1  = [objectName summation:10 andnum2:20];
    
    NSInteger count2 =[self calculateLenght:30 andBreath:20];
    NSLog(@"hello world");
    NSLog(@"count1=%g", count1);
    NSLog(@"count2=%i", count2);
    
    CGFloat result = [objectName reduce:100 andnum2:50];
    NSLog(@"result=%i", result);
    
    NSString *str = [objectName stitch:@"111" andstr2:@"222"];
    NSLog(str);
    
    NSMutableArray *mutaleArray = [[NSMutableArray alloc]init];
    [mutaleArray addObject:@"1"];
    [mutaleArray addObject:@"2"];
    [mutaleArray addObject:@"3"];
    [mutaleArray addObject:@"4"];
    NSString *resultStr = [objectName combinationMutableArray:mutaleArray];
    NSLog(resultStr);
    
    NSArray *array = [[NSArray alloc]initWithObjects:@"11",@"22", nil];
    NSString *resultStr2 = [objectName combinationArray:array];
    NSLog(resultStr2);
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc]init];
    [dictionary setObject:@"value1" forKey:@"key1"];
    [dictionary setObject:@"value2" forKey:@"key2"];
    [dictionary setObject:@"value3" forKey:@"key3"];
    
    NSString *resultStr3 =[objectName combinationMutableTable:dictionary];
    NSLog(resultStr3);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"this button" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(200,600,200,40)];
    
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    //    MyClass *objectName = [[MyClass alloc]init];
    NSInteger width = self.view.frame.size.width;
    
    ComputerView *computerView = [[ComputerView alloc]init];
    [computerView setFrame:CGRectMake(0,0,width,width+100)];
    
    [self.view addSubview:button];
    [self.view addSubview:computerView];
}

-(void) buttonClick:(UIButton* )button{
    //    UIAlertController *uiAlertContrller = [[UIAlertController alloc]init];
    //    [uiAlertContrller setTitle:@"这是title"];
    //    [uiAlertContrller setMessage:@"这是内容"];
    //
    //    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
    //        NSLog(@"click cancel");
    //    }];
    //
    //
    //    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
    //        NSLog(@"click ok");
    //    }];
    //
    //    [uiAlertContrller addAction:okAction];
    //
    //    [uiAlertContrller addAction:cancelAction];
    //
    //    [self presentViewController:uiAlertContrller animated:YES completion:nil];
    
    
    
    //    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"title" message:@"message"delegate:self cancelButtonTitle:@"canclebutton" otherButtonTitles:@"ok",@"third btn"];
    //    [alert show];
    
    
    UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"title" message:@"message"delegate:self cancelButtonTitle:@"canclebutton" otherButtonTitles:@"ok",@"third btn"];
    [alert2 show];
    //    [alert show];
}

//监听点击事件 代理方法
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *btnTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([btnTitle isEqualToString:@"canclebutton"]) {
        NSLog(@"你点击了退出");
    }
    else if ([btnTitle isEqualToString:@"ok"] ) {
        NSLog(@"你点击了重新登录按钮");
    }else if ([btnTitle isEqualToString:@"third btn"] ) {
        NSLog(@"你点击了third btn");
    }
}

-(NSInteger) calculateLenght:(CGFloat) length andBreath:(CGFloat) breath{
    
    CGFloat count = length +breath;
    return count;
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    NSLog(@"didReceiveMemoryWarning");
}


@end
