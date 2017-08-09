//
//  ViewController.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/26.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "ViewController.h"
#import "HomePage.h"
#import "ToPianGunDong.h"
#import "SearchViewController.h"
#import "ArticleViewController.h"
#import "ActivityViewController.h"
#import "PersonalViewController.h"
@interface ViewController ()<UITextFieldDelegate>
{
    UITabBarController *ShareArray;
    UITextField *userNameField;
    UITextField *passwdField;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1];
    
    
//    UIImageView *imageView=[[UIImageView alloc]init];
//    UIImage *image=[UIImage imageNamed:@"/Users/jackvictortyrantlee/Desktop/1 开机界面.jpg"];
//    imageView.image=image;
//    imageView.layer.masksToBounds=YES;
//    imageView.layer.cornerRadius=100;
//    NSArray *imageArray=@[image];
//    imageView.animationImages=imageArray;
//    imageView.animationDuration=[imageArray count];
//    imageView.animationRepeatCount=0;
//    [imageView startAnimating];
//    imageView.alpha=1;
//    imageView.hidden=NO;
//    [self.view addSubview:imageView];
    
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(105, 185, 200, 35)];
    label1.text=@"SHARE";
    label1.font=[UIFont systemFontOfSize:35];
    label1.backgroundColor=[UIColor clearColor];
    label1.textColor=[UIColor whiteColor];
    [self.view addSubview:label1];
    
    
    UIImageView *logo1=[[UIImageView alloc]initWithFrame:CGRectMake(100, 60, 120, 120)];
    logo1.image=[UIImage imageNamed:@"kaiji_logo.psd"];
    [self.view addSubview:logo1];
    
    
    userNameField=[[UITextField alloc]initWithFrame:CGRectMake(60, 240, 185, 30)];
    passwdField=[[UITextField alloc]initWithFrame:CGRectMake(60, 285, 185, 30)];
    
    userNameField.borderStyle=UITextBorderStyleRoundedRect;
    passwdField.borderStyle=UITextBorderStyleRoundedRect;
    userNameField.placeholder=@"请输入用户名";
    passwdField.placeholder=@"请输入密码";
    [self.view addSubview:userNameField];
    [self.view addSubview:passwdField];
    //设置挂件视图
    UIImageView *userImage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30,30)];
    userImage.image=[UIImage imageNamed:@"user_img.png"];
    userNameField.leftView=userImage;
    UIImageView *passImage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    passImage.image=[UIImage imageNamed:@"pass_img.png"];
    passwdField.leftView=passImage;
    userNameField.leftViewMode=UITextFieldViewModeAlways;
    passwdField.leftViewMode=UITextFieldViewModeAlways;
    //登陆按钮
    UIButton *log=[UIButton buttonWithType:UIButtonTypeSystem];
    log.backgroundColor=[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1];
    [log.layer setMasksToBounds:YES];
    [log.layer setCornerRadius:5.0];
    [log.layer setBorderWidth:2.0];
    log.layer.borderColor = [UIColor whiteColor].CGColor;
    log.titleLabel.font=[UIFont systemFontOfSize:18];
    log.frame=CGRectMake(60, 335, 70, 30);
    [log setTitle:@"登录" forState:UIControlStateNormal];
    [log setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [log addTarget:self action:@selector(PushA) forControlEvents:UIControlEventTouchUpInside];
    //注册按钮
    UIButton *nam=[UIButton buttonWithType:UIButtonTypeSystem];
    nam.backgroundColor=[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1];
    [nam.layer setMasksToBounds:YES];
    [nam.layer setCornerRadius:5.0];
    [nam.layer setBorderWidth:2.0];
    nam.layer.borderColor=[UIColor whiteColor].CGColor;
    nam.titleLabel.font=[UIFont systemFontOfSize:18];
    nam.frame=CGRectMake(175, 335, 70, 30);
    [nam setTitle:@"注册" forState:UIControlStateNormal];
    [nam setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [nam addTarget:self  action:@selector(PushB) forControlEvents:UIControlEventTouchUpInside];
    //设置代理
    userNameField.delegate=self;
    [self.view addSubview:log];
    passwdField.delegate=self;
    [self.view addSubview:nam];
    
    
    UIImageView *imageView=[[UIImageView alloc]init];
    UIImage *image=[UIImage imageNamed:@"1 开机界面.jpg"];
    imageView.image=image;
    imageView.layer.masksToBounds=YES;
    imageView.layer.cornerRadius=100;
    NSArray *imageArray=@[image];
    imageView.animationImages=imageArray;
    imageView.animationDuration=[imageArray count];
    imageView.animationRepeatCount=0;
    [imageView startAnimating];
    imageView.alpha=1;
    imageView.hidden=NO;
    [self.view addSubview:imageView];

}

-(void)PushA{
//    RootViewController *A=[[RootViewController alloc]init];
//    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:A];
//    
//    [self presentViewController:nav animated:YES completion:nil];
    
     //首页
    HomePage *homePage=[[HomePage alloc]init];
    UINavigationController *homepage=[[UINavigationController alloc]initWithRootViewController:homePage];

     UIImage *image1=[UIImage imageNamed:@"radio_button1_normal.png"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    homePage.tabBarItem.image=image1;
    UIImage* image2=[UIImage imageNamed:@"radio_button1_pressed.png"];
    image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    homePage.tabBarItem.selectedImage=image2;

    //搜索
    SearchViewController *searchPage=[[SearchViewController alloc]init];
    UINavigationController *searchpage=[[UINavigationController alloc]initWithRootViewController:searchPage];
    UIImage *image3=[UIImage imageNamed:@"radio_button2_normal.png"];
    image3=[image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    searchPage.tabBarItem.image=image3;
    UIImage *image4=[UIImage imageNamed:@"radio_button2_pressed.png"];
    image4=[image4 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    searchPage.tabBarItem.selectedImage=image4;
    
    //文章
    ArticleViewController *articlePage=[[ArticleViewController alloc]init];
    UINavigationController *articlepage=[[UINavigationController alloc]initWithRootViewController:articlePage];
    UIImage *image5=[UIImage imageNamed:@"radio_button3_normal.png"];
    image5=[image5 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    articlePage.tabBarItem.image=image5;
    UIImage *image6=[UIImage imageNamed:@"radio_button3_pressed.png"];
    image6=[image6 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    articlePage.tabBarItem.selectedImage=image6;
    
    //活动
    ActivityViewController *activityPage=[[ActivityViewController alloc]init];
    UINavigationController *arctivitypage=[[UINavigationController alloc]initWithRootViewController:activityPage];
    UIImage *image7=[UIImage imageNamed:@"radio_button4_normal.png"];
    image7=[image7 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    activityPage.tabBarItem.image=image7;
    UIImage *image8=[UIImage imageNamed:@"radio_button4_pressed.png"];
    image8=[image8 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    activityPage.tabBarItem.selectedImage=image8;
    
    //个人信息
    PersonalViewController *personalPage=[[PersonalViewController alloc]init];
    UINavigationController *personalpage=[[UINavigationController alloc]initWithRootViewController:personalPage];
    UIImage *image9=[UIImage imageNamed:@"radio_button5_normal.png"];
    image9=[image9 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    personalPage.tabBarItem.image=image9;
    UIImage *image10=[UIImage imageNamed:@"radio_button5_pressed.png"];
    image10=[image10 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    personalPage.tabBarItem.selectedImage=image10;
    
    //设置导航栏
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1]];
    [[UINavigationBar appearance]setTranslucent:NO];
    [[UITabBar appearance]setBarTintColor:[UIColor blackColor]];
    
    //创建数组
    ShareArray=[[UITabBarController alloc]init];
    ShareArray.viewControllers=[NSArray arrayWithObjects:homepage,searchpage,articlepage,arctivitypage,personalpage,nil];
    [self presentViewController:ShareArray animated:NO completion:nil];
}
-(void)PushB{
    zhuceViewController *B=[[zhuceViewController alloc]init];
    //ToPianGunDong *B=[[ToPianGunDong alloc]init];
    [self.navigationController pushViewController:B animated:YES];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [userNameField resignFirstResponder];
    [passwdField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
