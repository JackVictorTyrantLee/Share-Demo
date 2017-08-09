//
//  Search_upload.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Search_upload.h"

@interface Search_upload ()
{
    UITextField* Search_upload_text1;
    UITextView* Search_upload_text2;
}
@end

@implementation Search_upload

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

        [super viewDidLoad];
        self.view.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
        
        UIView *Search_upload_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
        UIButton *Search_upload_btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
        [Search_upload_btn setImage:[UIImage imageNamed:@"back_img.png"] forState:UIControlStateNormal];
        [Search_upload_view addSubview:Search_upload_btn];
        [Search_upload_btn addTarget:self action:@selector(Search_upload_back) forControlEvents:UIControlEventTouchUpInside];
        
        UILabel *Search_upload_lab = [[UILabel alloc] initWithFrame:CGRectMake(35,0, 80, 20)];
        Search_upload_lab.text = @"上传";
        Search_upload_lab.textColor = [UIColor whiteColor];
        Search_upload_lab.font = [UIFont systemFontOfSize:13];
        [Search_upload_view addSubview:Search_upload_lab];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
        // Do any additional setup after loading the view.
        
        UIButton* Search_upload_chosebtn = [UIButton buttonWithType: UIButtonTypeCustom];
        Search_upload_chosebtn.frame = CGRectMake(10, 10, 170, 85);
        [Search_upload_chosebtn setTitle:@"选择图片" forState:UIControlStateNormal];
        Search_upload_chosebtn.titleLabel.font = [UIFont systemFontOfSize:12];
        Search_upload_chosebtn.backgroundColor = [UIColor colorWithRed:213/255.0 green:211/255.0 blue:212/255.0 alpha:1];
        
        [Search_upload_chosebtn addTarget:self action:@selector(press_To_loshusquare) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Search_upload_chosebtn];
        
        UIImageView* Search_upload_image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"直线1.png"]];
        Search_upload_image1.frame = CGRectMake(-5, 105, 325, 8);
        [self.view addSubview:Search_upload_image1];
        
        
        Classifybtn_under1 = [UIButton buttonWithType:UIButtonTypeCustom];
        Classifybtn_under1.frame = CGRectMake(10, 130, 70, 25);
        [Classifybtn_under1.layer setMasksToBounds:YES];
        [Classifybtn_under1.layer setCornerRadius:5];
        [Classifybtn_under1 setTitle:@"平面设计" forState:UIControlStateNormal];
        Classifybtn_under1.titleLabel.font = [UIFont systemFontOfSize:12];
        [Classifybtn_under1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Classifybtn_under1.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:Classifybtn_under1];
        
        Classifybtn_under2 = [UIButton buttonWithType:UIButtonTypeCustom];
        Classifybtn_under2.frame = CGRectMake(87, 130, 70, 25);
        [Classifybtn_under2.layer setMasksToBounds:YES];
        [Classifybtn_under2.layer setCornerRadius:5];
        [Classifybtn_under2 setTitle:@"网页设计" forState:UIControlStateNormal];
        Classifybtn_under2.titleLabel.font = [UIFont systemFontOfSize:12];
        [Classifybtn_under2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Classifybtn_under2.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:Classifybtn_under2];
        
        Classifybtn_under3 = [UIButton buttonWithType:UIButtonTypeCustom];
        Classifybtn_under3.frame = CGRectMake(164, 130, 70, 25);
        [Classifybtn_under3.layer setMasksToBounds:YES];
        [Classifybtn_under3.layer setCornerRadius:5];
        [Classifybtn_under3 setTitle:@"UI/icon" forState:UIControlStateNormal];
        Classifybtn_under3.titleLabel.font = [UIFont systemFontOfSize:12];
        [Classifybtn_under3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Classifybtn_under3.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:Classifybtn_under3];
        
        Classifybtn_under4 = [UIButton buttonWithType:UIButtonTypeCustom];
        Classifybtn_under4.frame = CGRectMake(241, 130, 70, 25);
        [Classifybtn_under4.layer setMasksToBounds:YES];
        [Classifybtn_under4.layer setCornerRadius:5];
        [Classifybtn_under4 setTitle:@"插画/手绘" forState:UIControlStateNormal];
        Classifybtn_under4.titleLabel.font = [UIFont systemFontOfSize:12];
        [Classifybtn_under4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Classifybtn_under4.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:Classifybtn_under4];
        
        Classifybtn_under5 = [UIButton buttonWithType:UIButtonTypeCustom];
        Classifybtn_under5.frame = CGRectMake(10, 165, 80, 25);
        [Classifybtn_under5.layer setMasksToBounds:YES];
        [Classifybtn_under5.layer setCornerRadius:5];
        [Classifybtn_under5 setTitle:@"虚拟与设计" forState:UIControlStateNormal];
        Classifybtn_under5.titleLabel.font = [UIFont systemFontOfSize:12];
        [Classifybtn_under5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Classifybtn_under5.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:Classifybtn_under5];
        
        Classifybtn_under6 = [UIButton buttonWithType:UIButtonTypeCustom];
        Classifybtn_under6.frame = CGRectMake(97, 165, 65, 25);
        [Classifybtn_under6.layer setMasksToBounds:YES];
        [Classifybtn_under6.layer setCornerRadius:5];
        [Classifybtn_under6 setTitle:@"影视" forState:UIControlStateNormal];
        Classifybtn_under6.titleLabel.font = [UIFont systemFontOfSize:12];
        [Classifybtn_under6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Classifybtn_under6.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:Classifybtn_under6];
        
        Classifybtn_under7 = [UIButton buttonWithType:UIButtonTypeCustom];
        Classifybtn_under7.frame = CGRectMake(169, 165, 65, 25);
        [Classifybtn_under7.layer setMasksToBounds:YES];
        [Classifybtn_under7.layer setCornerRadius:5];
        [Classifybtn_under7 setTitle:@"摄影" forState:UIControlStateNormal];
        Classifybtn_under7.titleLabel.font = [UIFont systemFontOfSize:12];
        [Classifybtn_under7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Classifybtn_under7.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:Classifybtn_under7];
        
        Classifybtn_under8 = [UIButton buttonWithType:UIButtonTypeCustom];
        Classifybtn_under8.frame = CGRectMake(241, 165, 70, 25);
        [Classifybtn_under8.layer setMasksToBounds:YES];
        [Classifybtn_under8.layer setCornerRadius:5];
        [Classifybtn_under8 setTitle:@"其他" forState:UIControlStateNormal];
        Classifybtn_under8.titleLabel.font = [UIFont systemFontOfSize:12];
        [Classifybtn_under8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Classifybtn_under8.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:Classifybtn_under8];
        
        
        Search_upload_text1= [[UITextField alloc] initWithFrame:CGRectMake(0, 200, 320, 25)];
        Search_upload_text1.backgroundColor = [UIColor whiteColor];
        Search_upload_text1.placeholder = @"    作品名称";
        Search_upload_text1.font = [UIFont systemFontOfSize:12];
        [self.view addSubview:Search_upload_text1];
        
        Search_upload_text2 = [[UITextView alloc] initWithFrame:CGRectMake(0, 235, 320, 80)];
        Search_upload_text2.backgroundColor = [UIColor whiteColor];
        Search_upload_text2.text = @"   请添加作品说明/文章内容........";
        Search_upload_text2.textColor = [UIColor colorWithRed:206/255.0 green:206/255.0 blue:209/255.0 alpha:1];
        [self.view addSubview: Search_upload_text2];
        
        UIButton* Search_upload_btn2 = [UIButton buttonWithType: UIButtonTypeCustom];
        Search_upload_btn2.frame = CGRectMake(10, 325, 300, 35);
        Search_upload_btn2.backgroundColor = [UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1];
        [Search_upload_btn2 setTitle:@"发布" forState:UIControlStateNormal];
        Search_upload_btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.view addSubview:Search_upload_btn2];
        
        UIButton* Search_upload_btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        Search_upload_btn3.frame = CGRectMake(10, 370, 70, 15);
        [Search_upload_btn3 setImage:[UIImage imageNamed:@"checkbox_unchecked.png"] forState:UIControlStateNormal];
        [Search_upload_btn3 setTitle:@"禁止下载" forState:UIControlStateNormal];
        Search_upload_btn3.titleLabel.font = [UIFont systemFontOfSize:10];
        [Search_upload_btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.view addSubview: Search_upload_btn3];

}
-(void) Search_upload_back
{
    [self.navigationController popViewControllerAnimated:YES];
}

//-(void) press_To_loshusquare
//{
//    Search_loshusquare* lushusquare1 = [[Search_loshusquare alloc] init];
//    
//    
//    lushusquare1.hidesBottomBarWhenPushed = YES;
//    
//    [self.navigationController pushViewController:lushusquare1 animated:YES];
//}
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [Search_upload_text1 resignFirstResponder];
    [Search_upload_text2 resignFirstResponder];
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
