//
//  PersonalViewController.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/27.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "PersonalViewController.h"
#import "PersonSetup.h"
#import "Personal_myupload.h"
#import "Personal_myinformation.h"
#import "Personal_recommend.h"
#import "Personal_cell.h"

@interface PersonalViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor= [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    self.navigationItem.title= @"个人信息";
    UIFont *font = [UIFont fontWithName:@"HiraKakuProN-W3" size:22];
    NSDictionary *dic = @{NSFontAttributeName:font,NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes =dic;
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1]];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    UIBarButtonItem*  personal_return = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_img.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressPersonal_return)];
   // self.navigationItem.leftBarButtonItem = personal_return;
    // Do any additional setup after loading the view.
    
    Personal_tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 507)];
    Personal_tableview.delegate = self;
    Personal_tableview.dataSource = self;
    Personal_tableview.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 130)];
    Personal_tableview.tableFooterView = nil;
    Personal_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:Personal_tableview];
    
    
    UIImageView* Presonal_head_view = [[UIImageView alloc] initWithFrame:CGRectMake(20, 15, 110, 100)];
    Presonal_head_view.image = [UIImage imageNamed:@"works_head.png"];
    
    UILabel* Presonal_head_label1 = [[UILabel alloc] initWithFrame:CGRectMake(150, 20, 170, 25)];
    Presonal_head_label1.text = @"share小白";
    Presonal_head_label1.font = [UIFont fontWithName:@" sans-serif;font-family" size:14];
    
    UILabel* Presonal_head_label2 = [[UILabel alloc] initWithFrame:CGRectMake(150, 45, 170, 20)];
    Presonal_head_label2.text = @"数媒设计爱好者";
    Presonal_head_label2.font = [UIFont fontWithName:@"Courier" size:10];
    
    UILabel* Presonal_head_label3 = [[UILabel alloc] initWithFrame:CGRectMake(150, 65, 170, 25)];
    Presonal_head_label3.text = @"开心了就笑，不开心了就过会儿笑";
    Presonal_head_label3.font = [UIFont fontWithName:@"AmericanTypewriter" size:12];
    
    
    UIButton* presonal_head_btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton* presonal_head_btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    presonal_head_btn1.frame = CGRectMake(150, 90, 15, 15);
    [presonal_head_btn1 setImage:[UIImage imageNamed:@"img1.png"] forState:UIControlStateNormal];
    presonal_head_btn2.frame = CGRectMake(166, 90, 30, 20);
    [presonal_head_btn2 setTitle:@"15" forState:UIControlStateNormal];
    presonal_head_btn2.titleLabel.font = [UIFont  fontWithName:@"AmericanTypewriter" size:11];
    [presonal_head_btn2 setTitleColor:[UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1] forState:UIControlStateNormal];
    
    UIButton* presonal_head_btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton* presonal_head_btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    presonal_head_btn3.frame = CGRectMake(205, 90, 15, 15);
    [presonal_head_btn3 setImage:[UIImage imageNamed:@"button_zan.png"] forState:UIControlStateNormal];
    presonal_head_btn4.frame = CGRectMake(225, 90, 30, 20);
    [presonal_head_btn4 setTitle:@"120" forState:UIControlStateNormal];
    presonal_head_btn4.titleLabel.font = [UIFont  fontWithName:@"AmericanTypewriter" size:11];
    [presonal_head_btn4 setTitleColor:[UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1] forState:UIControlStateNormal];
    
    UIButton* presonal_head_btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton* presonal_head_btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
    presonal_head_btn5.frame = CGRectMake(260, 93, 20, 12);
    [presonal_head_btn5 setImage:[UIImage imageNamed:@"button_guanzhu.png"] forState:UIControlStateNormal];
    presonal_head_btn6.frame = CGRectMake(280, 90, 30, 20);
    [presonal_head_btn6 setTitle:@"89" forState:UIControlStateNormal];
    presonal_head_btn6.titleLabel.font = [UIFont  fontWithName:@"AmericanTypewriter" size:11];
    [presonal_head_btn6 setTitleColor:[UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1] forState:UIControlStateNormal];
    
    [Personal_tableview.tableHeaderView addSubview:Presonal_head_view];
    [Personal_tableview.tableHeaderView addSubview:Presonal_head_label1];
    [Personal_tableview.tableHeaderView addSubview:Presonal_head_label2];
    [Personal_tableview.tableHeaderView addSubview:Presonal_head_label3];
    [Personal_tableview.tableHeaderView addSubview:presonal_head_btn1];
    [Personal_tableview.tableHeaderView addSubview:presonal_head_btn2];
    [Personal_tableview.tableHeaderView addSubview:presonal_head_btn3];
    [Personal_tableview.tableHeaderView addSubview:presonal_head_btn4];
    [Personal_tableview.tableHeaderView addSubview:presonal_head_btn5];
    [Personal_tableview.tableHeaderView addSubview:presonal_head_btn6];
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    Personal_cell* cell = [Personal_tableview dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil)
    {
        cell = [[Personal_cell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    
    if (indexPath.row == 0)
    {
        [cell.Personal_cell_view setImage:[UIImage imageNamed:@"img2.png"]];
        cell.Personal_cell_label.text = @"我上传的";
        [cell.Personal_cell_btn setImage:[UIImage imageNamed:@"img3.png"] forState:UIControlStateNormal];
        [cell.Personal_cell_view2 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else if (indexPath.row == 1)
    {
        [cell.Personal_cell_view setImage:[UIImage imageNamed:@"img4.png"]];
        cell.Personal_cell_label.text = @"我的信息";
        [cell.Personal_cell_btn setImage:[UIImage imageNamed:@"img3.png"] forState:UIControlStateNormal];
        [cell.Personal_cell_view2 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else if (indexPath.row == 2)
    {
        [cell.Personal_cell_view setImage:[UIImage imageNamed:@"button_zan.png"]];
        cell.Personal_cell_label.text = @"我推荐的";
        [cell.Personal_cell_btn setImage:[UIImage imageNamed:@"img3.png"] forState:UIControlStateNormal];
        [cell.Personal_cell_view2 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else if (indexPath.row == 3)
    {
        [cell.Personal_cell_view setImage:[UIImage imageNamed:@"img5.png"]];
        cell.Personal_cell_label.text = @"院系通知";
        [cell.Personal_cell_btn setImage:[UIImage imageNamed:@"img3.png"] forState:UIControlStateNormal];
        [cell.Personal_cell_view2 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else if (indexPath.row == 4)
    {
        [cell.Personal_cell_view setImage:[UIImage imageNamed:@"img6.png"]];
        cell.Personal_cell_label.text = @"设置";
        [cell.Personal_cell_btn setImage:[UIImage imageNamed:@"img3.png"] forState:UIControlStateNormal];
        [cell.Personal_cell_view2 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else if (indexPath.row == 5)
    {
        [cell.Personal_cell_view setImage:[UIImage imageNamed:@"img7.png"]];
        cell.Personal_cell_label.text = @"退出";
        [cell.Personal_cell_btn setImage:[UIImage imageNamed:@"img3.png"] forState:UIControlStateNormal];
        [cell.Personal_cell_view2 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    return cell;
}
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        Personal_myupload *personal_newpage = [[Personal_myupload alloc] init];
        personal_newpage.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:personal_newpage animated:YES];
    }
    else if (indexPath.row == 1)
    {
        Personal_myinformation* personal_myinformationnew = [[Personal_myinformation alloc] init];
        [self.navigationController pushViewController:personal_myinformationnew animated:YES];
    }
    else if (indexPath.row == 2)
    {
        Personal_recommend* personal_recommendnew  = [[Personal_recommend alloc] init];
        [self.navigationController pushViewController:personal_recommendnew animated:YES];
    }
    else if (indexPath.row == 4)
    {
        PersonSetup* PersonSetupnew = [[PersonSetup alloc]init];
        [self.navigationController pushViewController:PersonSetupnew animated:YES];
    }
}
-(void) pressPersonal_return
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
