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
    
    UILabel* label =[[UILabel alloc]initWithFrame:CGRectMake(20,100,280,30)];
    label.text = @"hello world";
    [self.view addSubview:label];
    
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



@end
