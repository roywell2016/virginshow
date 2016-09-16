//
//  ViewController.m
//  virgin
//
//  Created by roywell on 16/9/16.
//  Copyright © 2016年 roywell. All rights reserved.
//

#import "ViewController.h"

int tip=0;

@interface ViewController ()

@end

@implementation ViewController

+ (void)initialize{
    [super initialize];
    NSLog(@"%d initialize",++tip);
}

- (instancetype)init{
    self = [super init];
    if(self){
        
    }
    NSLog(@"%d init",++tip);
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        
    }
    NSLog(@"%d initWithCoder",++tip);
    return self;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    NSLog(@"%d awakeFromNib",++tip);
}

-(void)loadView{
    [super loadView];
    NSLog(@"%d loadView",++tip);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%d viewDidLoad",++tip);
    
    UILabel* label =[[UILabel alloc]initWithFrame:CGRectMake(20,100,300,30)];
    label.text = @"hello world";
    label.numberOfLines=0;
    label.backgroundColor=[UIColor redColor];
    label.font=[UIFont systemFontOfSize:23];
    label.textColor=[UIColor whiteColor];
    label.textAlignment=NSTextAlignmentCenter;
    label.shadowColor=[UIColor greenColor];
    label.shadowOffset=CGSizeMake(10, 10);
    
    [self.view addSubview:label];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(40,150,240,30);
    button.backgroundColor = [UIColor redColor];
    [button setImage:[UIImage imageNamed:@"logo"] forState:UIControlStateNormal];
    [button setContentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [button setTitle:@"点我一下" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UITextField* textfield = [[UITextField alloc]initWithFrame:CGRectMake(20, 200, 280, 30)];
    textfield.borderStyle   = UITextBorderStyleRoundedRect;
    textfield.placeholder=@"请输入文字";
    UIImageView* imageview = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo"]];
    textfield.leftView=imageview;
    textfield.leftViewMode=UITextFieldViewModeAlways;
    [self.view addSubview:textfield];
    
}

-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"%d viewWilllayoutSubviews",++tip);
}

-(void) viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"%d viewDidLayoutSubviews",++tip);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"%d didReceiveMemoryWaring",++tip);
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"%d viewWillAppear",++tip);
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"%d viewDidAppear",++tip);
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"%d viewWillDisappear",++tip);
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"%d viewDidDisappear",++tip);
}

-(void)dealalloc{
    NSLog(@"%d deallloc",++tip);
}


-(void)changeColor{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}


@end
