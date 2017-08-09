//
//  PersonSetup_2.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "PersonSetup_2.h"

@interface PersonSetup_2 ()
{
    UITextField*  setup2_textfield1;
    UITextField*  setup2_textfield2;
    UITextField*  setup2_textfield3;
}

@end

@implementation PersonSetup_2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *Search_upload_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    UIButton *Search_upload_btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
    [Search_upload_btn setImage:[UIImage imageNamed:@"back_img.png"] forState:UIControlStateNormal];
    [Search_upload_view addSubview:Search_upload_btn];
    [Search_upload_btn addTarget:self action:@selector(Search_upload_back) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *Search_upload_lab = [[UILabel alloc] initWithFrame:CGRectMake(35,0, 80, 20)];
    Search_upload_lab.text = @"修改密码";
    Search_upload_lab.textColor = [UIColor whiteColor];
    Search_upload_lab.font = [UIFont systemFontOfSize:13];
    [Search_upload_view addSubview:Search_upload_lab];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
    // Do any additional setup after loading the view.
    
    UILabel* setup2_label1 = [[UILabel alloc] init];
    setup2_label1.text = @"旧密码";
    setup2_label1.font = [UIFont systemFontOfSize:12];
    setup2_label1.frame = CGRectMake(30, 15, 40, 20);
    setup2_textfield1 = [[UITextField alloc ]initWithFrame:CGRectMake(100, 20, 200, 20)];
    setup2_textfield1.placeholder = @"6-20英文或数字结合";
    
    UIImageView* setup2_view1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 50, 320, 6)];
    setup2_view1.image = [UIImage imageNamed:@"直线2.png"];
    [self.view addSubview:setup2_label1];
    [self.view addSubview:setup2_textfield1];
    [self.view addSubview:setup2_view1];
    
    UILabel* setup2_label2 = [[UILabel alloc] init];
    setup2_label2.text = @"新密码";
    setup2_label2.font = [UIFont systemFontOfSize:12];
    setup2_label2.frame = CGRectMake(30, 65, 40, 20);
    setup2_textfield2 = [[UITextField alloc ]initWithFrame:CGRectMake(100, 70, 200, 20)];
    setup2_textfield2.placeholder = @"6-20英文或数字结合";
    
    UIImageView* setup2_view2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, 320, 6)];
    setup2_view2.image = [UIImage imageNamed:@"直线2.png"];
    [self.view addSubview:setup2_label2];
    [self.view addSubview:setup2_textfield2];
    [self.view addSubview:setup2_view2];
    
    UILabel* setup2_label3 = [[UILabel alloc] init];
    setup2_label3.text = @"确认密码";
    setup2_label3.font = [UIFont systemFontOfSize:12];
    setup2_label3.frame = CGRectMake(30, 115, 50, 20);
    setup2_textfield3 = [[UITextField alloc ]initWithFrame:CGRectMake(100, 120, 200, 20)];
    setup2_textfield3.placeholder = @"请再次确认输入密码";
    
    UIImageView* setup2_view3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 150, 320, 6)];
    setup2_view3.image = [UIImage imageNamed:@"直线2.png"];
    [self.view addSubview:setup2_label3];
    [self.view addSubview:setup2_textfield3];
    [self.view addSubview:setup2_view3];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [setup2_textfield1 resignFirstResponder];
    [setup2_textfield2 resignFirstResponder];
    [setup2_textfield3 resignFirstResponder];
}
-(void) Search_upload_back
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
