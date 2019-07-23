//
//  ComputerView.m
//  MySecondApp
//
//  Created by 杨蕾 on 2019/7/23.
//  Copyright © 2019 lxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerView.h"
#import <UIKit/UIKit.h>

@interface ComputerView()
@property (nonatomic,weak) UILabel *lableResult;
@property (nonatomic,weak) UILabel *lable9;
@property (nonatomic,weak) UILabel *lable8;
@property (nonatomic,weak) UILabel *lable7;
@property (nonatomic,weak) UILabel *lable6;
@property (nonatomic,weak) UILabel *lable5;
@property (nonatomic,weak) UILabel *lable4;
@property (nonatomic,weak) UILabel *lable3;
@property (nonatomic,weak) UILabel *lable2;
@property (nonatomic,weak) UILabel *lable1;
@property (nonatomic,weak) UIButton *lable0;
//@property (nonatomic,weak) UILabel *lable00;
@property (nonatomic,weak) UILabel *lablePlus;
@property (nonatomic,weak) UILabel *lableReduce;
@property (nonatomic,weak) UILabel *lableRide;
@property (nonatomic,weak) UILabel *lableDivide;
@property (nonatomic,weak) UILabel *lableComputer;
@property NSInteger firstNum;
@property NSInteger secondNum;
@property NSString *stateFlag;
@property NSInteger resultNum;

@end

@implementation ComputerView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createChildView];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGSize size = self.frame.size;
    NSInteger width = size.width;
    NSInteger height = size.height;
    NSInteger itemWidth =width/4;
    NSInteger itemHeight =height/5;
    
    self.lableResult.frame = CGRectMake(0, 0, size.width, itemHeight);
    self.lable7.frame = CGRectMake(0, itemHeight, itemWidth, itemHeight);
    self.lable8.frame = CGRectMake(itemWidth, itemHeight, itemWidth, itemHeight);
    self.lable9.frame = CGRectMake(itemWidth*2, itemHeight, itemWidth, itemHeight);
    self.lablePlus.frame = CGRectMake(itemWidth*3, itemHeight, itemWidth, itemHeight);
    
    self.lable4.frame = CGRectMake(0, itemHeight*2, itemWidth, itemHeight);
    self.lable5.frame = CGRectMake(itemWidth, itemHeight*2, itemWidth, itemHeight);
    self.lable6.frame = CGRectMake(itemWidth*2, itemHeight*2, itemWidth, itemHeight);
    self.lableReduce.frame = CGRectMake(itemWidth*3, itemHeight*2, itemWidth, itemHeight);
    
    self.lable1.frame = CGRectMake(0, itemHeight*3, itemWidth, itemHeight);
    self.lable2.frame = CGRectMake(itemWidth, itemHeight*3, itemWidth, itemHeight);
    self.lable3.frame = CGRectMake(itemWidth*2, itemHeight*3, itemWidth, itemHeight);
    self.lableRide.frame = CGRectMake(itemWidth*3, itemHeight*3, itemWidth, itemHeight);
    
    [self.lable0 setFrame:CGRectMake(0, itemHeight*4, itemWidth, itemHeight)];
    self.lable0.frame = CGRectMake(0, itemHeight*4, itemWidth, itemHeight);
    //    self.lable00.frame = CGRectMake(0, itemHeight*5, itemWidth, itemHeight);
    self.lableComputer.frame = CGRectMake(itemWidth, itemHeight*4, itemWidth*2, itemHeight);
    self.lableDivide.frame = CGRectMake(itemWidth*3, itemHeight*4, itemWidth, itemHeight);
}

- (void)createChildView{
    
    UILabel *lableResult = [[UILabel alloc] init];
    UILabel *lable9 = [[UILabel alloc] init];
    UILabel *lable8 = [[UILabel alloc] init];
    UILabel *lable7 = [[UILabel alloc] init];
    UILabel *lable6 = [[UILabel alloc] init];
    UILabel *lable5 = [[UILabel alloc] init];
    UILabel *lable4 = [[UILabel alloc] init];
    UILabel *lable3 = [[UILabel alloc] init];
    UILabel *lable2 = [[UILabel alloc] init];
    UILabel *lable1 = [[UILabel alloc] init];
    UILabel *lableComputer = [[UILabel alloc] init];
    UIButton *lable0 = [[UIButton alloc] init];
    //    UILabel *lable00 = [[UILabel alloc] init];
    UILabel *lablePlus = [[UILabel alloc] init];
    UILabel *lableReduce = [[UILabel alloc] init];
    UILabel *lableRide = [[UILabel alloc] init];
    UILabel *lableDivide = [[UILabel alloc] init];
    
    
    self.lableResult = lableResult;
    
    self.lable9 = lable9;
    self.lable8 = lable8;
    self.lable7 = lable7;
    self.lablePlus = lablePlus;
    
    self.lable4 = lable4;
    self.lable5 = lable5;
    self.lable6 = lable6;
    self.lableReduce = lableReduce;
    
    self.lable1 = lable1;
    self.lable2 = lable2;
    self.lable3 = lable3;
    self.lableRide = lableRide;
    
    self.lable0 = lable0;
    //    self.lable00 = lable00;
    self.lableComputer = lableComputer;
    self.lableDivide = lableDivide;
    
    [self addSubview:lable0];
    //    [self addSubview:lable00];
    [self addSubview:lableResult];
    [self addSubview:lable9];
    [self addSubview:lable8];
    [self addSubview:lable7];
    [self addSubview:lable6];
    [self addSubview:lable5];
    [self addSubview:lable4];
    [self addSubview:lable3];
    [self addSubview:lable2];
    [self addSubview:lable1];
    
    [self addSubview:lablePlus];
    [self addSubview:lableReduce];
    [self addSubview:lableRide];
    [self addSubview:lableDivide];
    [self addSubview:lableComputer];
    
    lableResult.text = @"结果";
    lableResult.textAlignment = NSTextAlignmentCenter;
    lableResult.backgroundColor = [UIColor grayColor];
    
    //    UIColor *color = [UIColor grayColor];
    
    lable7.text = @"7";
    lable7.textAlignment = NSTextAlignmentCenter;
    //    lable7.backgroundColor = color;
    
    lable8.text = @"8";
    lable8.textAlignment = NSTextAlignmentCenter;
    //    lable8.backgroundColor = color;
    
    lable9.text = @"9";
    lable9.textAlignment = NSTextAlignmentCenter;
    //    lable9.backgroundColor = color;
    
    lablePlus.text = @"+";
    lablePlus.textAlignment = NSTextAlignmentCenter;
    //    lablePlus.backgroundColor = color;
    
    lable4.text = @"4";
    lable4.textAlignment = NSTextAlignmentCenter;
    lable5.text = @"5";
    lable5.textAlignment = NSTextAlignmentCenter;
    lable6.text = @"6";
    lable6.textAlignment = NSTextAlignmentCenter;
    lableReduce.text = @"-";
    lableReduce.textAlignment = NSTextAlignmentCenter;
    
    lable1.text = @"1";
    lable1.textAlignment = NSTextAlignmentCenter;
    lable2.text = @"2";
    lable2.textAlignment = NSTextAlignmentCenter;
    lable3.text = @"3";
    lable3.textAlignment = NSTextAlignmentCenter;
    lableRide.text = @"x";
    lableRide.textAlignment = NSTextAlignmentCenter;
    
    [lable0 setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    [lable0 setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [lable0 setTitle:@"0" forState:UIControlStateNormal];
    
    //    lable00.text = @"00";
    //    lable00.textAlignment = NSTextAlignmentCenter;
    lableComputer.text = @"=";
    lableComputer.textAlignment = NSTextAlignmentCenter;
    lableDivide.text = @"/";
    lableDivide.textAlignment = NSTextAlignmentCenter;
    
    
    lable9.userInteractionEnabled = YES;
    lable8.userInteractionEnabled = YES;
    lable7.userInteractionEnabled = YES;
    lable6.userInteractionEnabled = YES;
    lable5.userInteractionEnabled = YES;
    lable4.userInteractionEnabled = YES;
    lable3.userInteractionEnabled = YES;
    lable2.userInteractionEnabled = YES;
    lable1.userInteractionEnabled = YES;
    //    lable0.userInteractionEnabled = YES;
    //    lable00.userInteractionEnabled = YES;
    lablePlus.userInteractionEnabled = YES;
    lableReduce.userInteractionEnabled = YES;
    lableRide.userInteractionEnabled = YES;
    lableDivide.userInteractionEnabled = YES;
    lableComputer.userInteractionEnabled = YES;
    
    //    UITapGestureRecognizer *rec = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClick:)];
    //    self.dynamicLongGesture = rec;
    
    
    //添加点击事件
    [lable9 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lable8 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lable7 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lable6 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lable5 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lable4 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lable3 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lable2 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lable1 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    //    [lable0 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClick:)]];
    
    [lable0 addTarget:self action:@selector(buttonClickButton:) forControlEvents:UIControlEventTouchUpInside];
    //    [lable00 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClick:)]];
    [lableComputer addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lablePlus addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lableReduce addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lableRide addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lableDivide addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
    [lableComputer addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClickLabel:)]];
}

-(void)buttonClickButton:(UIButton *)button{
    NSString *str = [button titleLabel].text;
    [self buttonClick:str];
}

-(void)buttonClickLabel:(UITapGestureRecognizer *)rec{
    UILabel *label = (UILabel*)rec.view;
    NSString *str = label.text;
    NSLog(@"buttonClick %@",str);
    [self buttonClick:str];
}

-(void)buttonClick:(NSString *)str{
    NSLog(@"buttonClick %@",str);
    
    if([str isEqualToString:@"="]){
        //根据状态值计算结果
        if([_stateFlag isEqualToString:@"+"]){
            _resultNum = _firstNum + _secondNum;
        }else if([_stateFlag isEqualToString:@"-"]){
            _resultNum = _firstNum - _secondNum;
        }else if([_stateFlag isEqualToString:@"x"]){
            _resultNum = _firstNum * _secondNum;
        }else if([_stateFlag isEqualToString:@"/"]){
            _resultNum = _firstNum / _secondNum;
        }else{
            _lableResult.text =[[NSNumber numberWithInteger:_firstNum]stringValue];
            return;
        }
        _lableResult.text= [[NSNumber numberWithInteger:_resultNum]stringValue];
        //重制状态
        _stateFlag = @"";
        _firstNum = 0;
        _secondNum = 0;
        return;
    }
    if([str isEqualToString:@"+"]||[str isEqualToString:@"-"]||[str isEqualToString:@"x"]||[str isEqualToString:@"/"]){
        _stateFlag = str;
        _lableResult.text =  [[[NSNumber numberWithInteger:_firstNum]stringValue] stringByAppendingString:str];
        return;
    }
    NSInteger num = [str integerValue];
    if(_stateFlag==nil||[_stateFlag isEqualToString:@""]){
        if(_firstNum==0){
            _firstNum = num;
        }else{
            _firstNum = _firstNum*10+num;
        }
        _lableResult.text= [[NSNumber numberWithInteger:_firstNum]stringValue];
        return;
    }
    if(_secondNum==0){
        _secondNum=num;
    }else{
        _secondNum = _secondNum*10+num;
    }
    NSString *show = [[[NSNumber numberWithInteger:_firstNum]stringValue]stringByAppendingString:_stateFlag];
    show = [show stringByAppendingString:[[NSNumber numberWithInteger:_secondNum]stringValue]];
    _lableResult.text= show;
}


@end
