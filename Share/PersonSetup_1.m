//
//  PersonSetup_1.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "PersonSetup_1.h"

@interface PersonSetup_1 ()

@end

@implementation PersonSetup_1

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
    Search_upload_lab.text = @"基本资料";
    Search_upload_lab.textColor = [UIColor whiteColor];
    Search_upload_lab.font = [UIFont systemFontOfSize:13];
    [Search_upload_view addSubview:Search_upload_lab];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
    
    // Do any additional setup after loading the view.
    
    UILabel* setup1label1 = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 30, 25)];
    setup1label1.text = @"头像";
    setup1label1.font = [UIFont systemFontOfSize:13];
    UIImageView* setup1view1 = [[UIImageView alloc] initWithFrame:CGRectMake(90, 10, 70, 70)];
    setup1view1.image = [UIImage imageNamed:@"works_head.png"];
    UIImageView* setup1view12 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 86, 320, 6)];
    setup1view12.image = [UIImage imageNamed:@"直线2.png"];
    [self.view addSubview:setup1label1];
    [self.view addSubview:setup1view1];
    [self.view addSubview:setup1view12];
    
    
    UILabel* setup1label2 = [[UILabel alloc] initWithFrame:CGRectMake(30, 97, 30, 30)];
    setup1label2.text = @"昵称";
    setup1label2.font = [UIFont systemFontOfSize:13];
    UILabel* setup1label21 = [[UILabel alloc] initWithFrame:CGRectMake(90, 97, 160, 30)];
    setup1label21.text = @"sare小白";
    setup1label21.font = [UIFont systemFontOfSize:12];
    UIImageView* setup1view2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 126, 320, 6)];
    setup1view2.image = [UIImage imageNamed:@"直线2.png"];
    [self.view addSubview:setup1label2];
    [self.view addSubview:setup1label21];
    [self.view addSubview:setup1view2];
    
    
    
    UILabel* setup1label3 = [[UILabel alloc] initWithFrame:CGRectMake(30, 137, 30, 30)];
    setup1label3.text = @"签名";
    setup1label3.font = [UIFont systemFontOfSize:13];
    UILabel* setup1label31 = [[UILabel alloc] initWithFrame:CGRectMake(90, 137, 200, 30)];
    setup1label31.text = @"开心了就笑，不开心了就过会儿再笑";
    setup1label31.font = [UIFont systemFontOfSize:12];
    UIImageView* setup1view3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 166, 320, 6)];
    setup1view3.image = [UIImage imageNamed:@"直线2.png"];
    [self.view addSubview:setup1label3];
    [self.view addSubview:setup1label31];
    [self.view addSubview:setup1view3];
    
    
    UILabel* setup1label4 = [[UILabel alloc] initWithFrame:CGRectMake(30, 175, 30, 30)];
    setup1label4.text = @"性别";
    setup1label4.font = [UIFont systemFontOfSize:13];
    UIButton* setup1btn1 = [UIButton buttonWithType: UIButtonTypeCustom];
    setup1btn1.frame = CGRectMake(90, 175, 40, 30);
    [setup1btn1 setTitle:@"男" forState:UIControlStateNormal];
    [setup1btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    setup1btn1.titleLabel.font = [UIFont systemFontOfSize:12];
    [setup1btn1 setImage:[UIImage imageNamed: @"boy_button.png"] forState:UIControlStateNormal];
    UIButton* setup1btn2 = [UIButton buttonWithType: UIButtonTypeCustom];
    setup1btn2.frame = CGRectMake(140, 175, 40, 30);
    [setup1btn2 setTitle:@"女" forState:UIControlStateNormal];
    [setup1btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    setup1btn2.titleLabel.font = [UIFont systemFontOfSize:12];
    [setup1btn2 setImage:[UIImage imageNamed: @"girl_button.png"] forState:UIControlStateNormal];
    UIImageView* setup1view4 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 204, 320, 6)];
    setup1view4.image = [UIImage imageNamed:@"直线2.png"];
    [self.view addSubview:setup1label4];
    [self.view addSubview:setup1btn1];
    [self.view addSubview:setup1btn2];
    [self.view addSubview:setup1view4];
    
    
    UILabel* setup1label5 = [[UILabel alloc] initWithFrame:CGRectMake(30, 217, 30, 30)];
    setup1label5.text = @"邮箱";
    setup1label5.font = [UIFont systemFontOfSize:13];
    UILabel* setup1label51 = [[UILabel alloc] initWithFrame:CGRectMake(90, 217, 160, 30)];
    setup1label51.text = @"186####3@qq.com";
    setup1label51.font = [UIFont systemFontOfSize:12];
    UIImageView* setup1view5 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 246, 320, 6)];
    setup1view5.image = [UIImage imageNamed:@"直线2.png"];
    [self.view addSubview:setup1label5];
    [self.view addSubview:setup1label51];
    [self.view addSubview:setup1view5];

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
