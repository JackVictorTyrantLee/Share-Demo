//
//  PersonSetup.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "PersonSetup.h"
#import "Personal_cell.h"
#import "PersonSetup_1.h"
#import "PersonSetup_2.h"
#import "PersonSetup_3.h"

@interface PersonSetup ()<UITableViewDelegate,UITableViewDelegate>
{
    NSMutableArray *Personal_setup_array;
}
@end

@implementation PersonSetup

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    UIView *Search_upload_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    UIButton *Search_upload_btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
    [Search_upload_btn setImage:[UIImage imageNamed:@"back_img.png"] forState:UIControlStateNormal];
    [Search_upload_view addSubview:Search_upload_btn];
    [Search_upload_btn addTarget:self action:@selector(Search_upload_back) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *Search_upload_lab = [[UILabel alloc] initWithFrame:CGRectMake(35,0, 80, 20)];
    Search_upload_lab.text = @"设置";
    Search_upload_lab.textColor = [UIColor whiteColor];
    Search_upload_lab.font = [UIFont systemFontOfSize:13];
    [Search_upload_view addSubview:Search_upload_lab];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
    // Do any additional setup after loading the view.
    
    Personal_setup_tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 507)];
    Personal_setup_tableview.delegate = self;
    Personal_setup_tableview.dataSource = self;
    Personal_setup_tableview.tableFooterView = nil;
    Personal_setup_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:Personal_setup_tableview];

    Personal_setup_array=[[NSMutableArray alloc]initWithObjects:@"基本资料",@"修改密码",@"消息设置",@"关于SHARE",@"清除缓存", nil];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellStr=@"cell";
    Personal_cell *cell=[Personal_setup_tableview dequeueReusableCellWithIdentifier:cellStr];
    if (cell==nil) {
        cell=[[Personal_cell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    cell.Personal_cell_label.text=[Personal_setup_array objectAtIndex:indexPath.row];
    [cell.Personal_cell_view2 setImage:[UIImage imageNamed:@"直线2.png"]];
    [cell.Personal_cell_btn setImage:[UIImage imageNamed:@"img3.png"] forState:UIControlStateNormal];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        PersonSetup_1 *personalsetupnew_1=[[PersonSetup_1 alloc]init];
        [self.navigationController pushViewController:personalsetupnew_1 animated:YES];
    }
    if (indexPath.row==1) {
        PersonSetup_2 *personalsetupnew_2=[[PersonSetup_2 alloc]init];
        [self.navigationController pushViewController:personalsetupnew_2 animated:YES];
    }
    if (indexPath.row==2) {
        PersonSetup_3 *personalsetupnew_3=[[PersonSetup_3 alloc]init];
        [self.navigationController pushViewController:personalsetupnew_3 animated:YES];
    }
    if (indexPath.row==4) {
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"缓存已清除" message:nil delegate:self cancelButtonTitle:@"好的" otherButtonTitles:nil];
        [alert show];
        
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}
-(void)Search_upload_back
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
