//
//  ViewController.m
//  virgin
//
//  Created by roywell on 16/9/16.
//  Copyright © 2016年 roywell. All rights reserved.
//

#import "ViewController.h"

int tip=0;

@interface ViewController ()<UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>

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
    button.layer.masksToBounds=YES;
    button.layer.cornerRadius=5;
    //button.layer.borderColor=[UIColor greenColor].CGColor;
    button.layer.borderWidth=5;
    button.layer.shadowColor =[UIColor grayColor].CGColor;
    button.layer.shadowOffset=CGSizeMake(0, 10);
    button.layer.shadowOpacity =1;
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UITextField* textfield = [[UITextField alloc]initWithFrame:CGRectMake(20, 200, 280, 30)];
    textfield.delegate=self;
    textfield.borderStyle   = UITextBorderStyleRoundedRect;
    textfield.placeholder=@"请输入文字";
    UIImageView* imageview = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo"]];
    textfield.leftView=imageview;
    textfield.leftViewMode=UITextFieldViewModeAlways;
    [self.view addSubview:textfield];
    
    UISwitch* swi = [[UISwitch alloc]initWithFrame:CGRectMake(100, 250, 100, 40)];
    swi.onTintColor =[UIColor greenColor];
    swi.tintColor = [UIColor redColor];
    swi.thumbTintColor = [UIColor blueColor];
    [swi addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:swi];
    
    self.view.backgroundColor = [UIColor blackColor];
    UIPageControl* page= [[UIPageControl alloc]initWithFrame:CGRectMake(20, 300, 280, 30)];
    page.currentPageIndicatorTintColor =[UIColor redColor];
    [page addTarget:self action:@selector(changeNum:) forControlEvents:UIControlEventValueChanged];
    page.numberOfPages=8;
    [self.view addSubview:page];
    
    UISegmentedControl* seg =[[UISegmentedControl alloc]initWithItems:@[@"one",@"three",@"four"]];
    seg.frame = CGRectMake(20, 20, 280, 30);
    [seg setImage:[[UIImage imageNamed:@"logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ] forSegmentAtIndex:1];
    [seg setContentOffset:CGSizeMake(10, 10) forSegmentAtIndex:0];
    seg.momentary=NO;
    seg.apportionsSegmentWidthsByContent=YES;
    [self.view addSubview:seg];
    
    UISlider* slider =[[UISlider alloc]initWithFrame:CGRectMake(20, 350, 280, 30)];
    slider.continuous=YES;
    slider.minimumValue=0;
    slider.maximumValue=10;
    slider.minimumTrackTintColor=[UIColor redColor];
    slider.maximumTrackTintColor=[UIColor greenColor];
    slider.thumbTintColor=[UIColor blueColor];
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
    
    self.view.backgroundColor=[UIColor whiteColor];
    UIActivityIndicatorView* indicator =[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    indicator.center =CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    indicator.color=[UIColor blackColor];
    [self.view addSubview:indicator];
    
    [indicator startAnimating];
    
    UIPickerView* picker = [[UIPickerView alloc]initWithFrame:CGRectMake(20, 400, 280, 100)];
    picker.delegate =self;
    picker.dataSource=self;
    [self.view addSubview: picker];
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

-(void)changeColor:(UISwitch*)swi{
    if(swi.isOn)
    {
        self.view.backgroundColor =[UIColor redColor];
    }
    else
    {
        self.view.backgroundColor =[UIColor greenColor];
    }
}

-(void)changeNum:(UIPageControl*)page{
    NSLog(@"%lu",page.currentPage);
}

-(void)changeValue:(UISlider*)slider{
    NSLog(@"%f",slider.value);
}


-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    
    if(string.length>0){
        if([string characterAtIndex:0]<'0' ||[string characterAtIndex:0]>'9'){
            NSLog(@"请输入数字");
            return NO;
        }
        
        if(textField.text.length+string.length>11){
            NSLog(@"超过11位了");
            return NO;
        }
        
    }
    
    return YES;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 10;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [NSString stringWithFormat:@"%lu分区%lu数据",component,row];
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 44;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    return 140;
}

@end
