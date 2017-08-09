//
//  zhuceViewController.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/26.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "zhuceViewController.h"

@interface zhuceViewController ()<UITextFieldDelegate>
{
    UITextField* eMailField1;
    UITextField* userNameField1;
    UITextField* passwdField1;
}
@end

@implementation zhuceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1];
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(105, 185, 200, 35)];
    label1.text=@"SHARE";
    label1.font=[UIFont systemFontOfSize:35];
    label1.backgroundColor=[UIColor clearColor];
    label1.textColor=[UIColor whiteColor];
    [self.view addSubview:label1];
    
    
    UIImageView *logo1=[[UIImageView alloc]initWithFrame:CGRectMake(100, 60, 120, 120)];
    logo1.image=[UIImage imageNamed:@"kaiji_logo.psd"];
    [self.view addSubview:logo1];
    
    eMailField1=[[UITextField alloc]initWithFrame:CGRectMake(80, 240, 160, 30)];
    userNameField1=[[UITextField alloc]initWithFrame:CGRectMake(80, 275, 160, 30)];
    passwdField1=[[UITextField alloc]initWithFrame:CGRectMake(80, 310, 160, 30)];
    
    eMailField1.borderStyle=UITextBorderStyleRoundedRect;
    userNameField1.borderStyle=UITextBorderStyleRoundedRect;
    passwdField1.borderStyle=UITextBorderStyleRoundedRect;
    eMailField1.placeholder=@"请输入邮箱地址";
    userNameField1.placeholder=@"请输入用户名";
    passwdField1.placeholder=@"请输入密码";
    [self.view addSubview:eMailField1];
    [self.view addSubview:userNameField1];
    [self.view addSubview:passwdField1];
    //设置挂件视图
    UIImageView *eMailImage1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30,30)];
    eMailImage1.image=[UIImage imageNamed:@""];
    eMailField1.leftView=eMailImage1;
    UIImageView *userImage1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30,30)];
    userImage1.image=[UIImage imageNamed:@""];
    userNameField1.leftView=userImage1;
    UIImageView *passwdImage1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30,30)];
    passwdImage1.image=[UIImage imageNamed:@""];
    passwdField1.leftView=passwdImage1;
    //注册按钮
    UIButton *zhuce=[UIButton buttonWithType:UIButtonTypeSystem];
    zhuce.backgroundColor=[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1];
    [zhuce.layer setMasksToBounds:YES];
    [zhuce.layer setCornerRadius:5.0];
    [zhuce.layer setBorderWidth:2.0];
    zhuce.layer.borderColor=[UIColor whiteColor].CGColor;
    zhuce.titleLabel.font=[UIFont systemFontOfSize:18];
    zhuce.frame=CGRectMake(110,345, 100, 30);
    [zhuce setTitle:@"确认注册" forState:UIControlStateNormal];
    [zhuce addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchUpInside];
    [zhuce setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //设置代理
    eMailField1.delegate=self;
    userNameField1.delegate=self;
    passwdField1.delegate=self;
    [self.view addSubview:zhuce];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [eMailField1 resignFirstResponder];
    [passwdField1 resignFirstResponder];
    [userNameField1 resignFirstResponder];
}
-(void)fanhui
{
     [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
