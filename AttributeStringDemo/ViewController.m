//
//  ViewController.m
//  AttributeStringDemo
//
//  Created by ranwenjie on 16/3/7.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addButton];
}

- (void)addButton{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 40, self.view.frame.size.width, 200);
    //btn.backgroundColor = [UIColor blueColor];
    
    NSString *text1 = @"搜索服务开小差了";
    NSString *text2 = @"\n请选择以下一个地点作为起点或点此重试点此重试";

    NSMutableAttributedString *attributeTitle1 = [[NSMutableAttributedString alloc] initWithString:text1 attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16],NSForegroundColorAttributeName:[UIColor grayColor]}];
     NSMutableAttributedString *attributeTitle2 = [[NSMutableAttributedString alloc] initWithString:text2 attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12],NSForegroundColorAttributeName:[UIColor redColor]}];
    [attributeTitle1 appendAttributedString:attributeTitle2];
    [btn setAttributedTitle:attributeTitle1 forState:UIControlStateNormal];
    btn.titleLabel.numberOfLines = 2;
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
