//
//  Personal_information_2.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Personal_information_2.h"
#import "Personal_information_cell2.h"
#import "ShareXiaoLan.h"
@interface Personal_information_2 ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation Personal_information_2

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
    Search_upload_lab.text = @"新关注的";
    Search_upload_lab.textColor = [UIColor whiteColor];
    Search_upload_lab.font = [UIFont systemFontOfSize:13];
    [Search_upload_view addSubview:Search_upload_lab];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
    
    Personal_information_cell2_tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 400)];
    Personal_information_cell2_tableview.delegate = self;
    Personal_information_cell2_tableview.dataSource = self;
    Personal_information_cell2_tableview.tableHeaderView = nil;
    Personal_information_cell2_tableview.tableFooterView = nil;
    Personal_information_cell2_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:Personal_information_cell2_tableview];


}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"cell";
    Personal_information_cell2* cell = [Personal_information_cell2_tableview dequeueReusableCellWithIdentifier:str];
    if (cell == nil) {
        cell = [[Personal_information_cell2 alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
    }
    if (indexPath.row==0) {
        [cell.Personal_information_cell1_view setImage:[UIImage imageNamed:@"works_head.png"]];
        cell.Personal_information_cell1_label.text=@"share小格";
        [cell.Personal_information_cell1_view1 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else  if (indexPath.row==1) {
        [cell.Personal_information_cell1_view setImage:[UIImage imageNamed:@"works_head.png"]];
        cell.Personal_information_cell1_label.text=@"share小兰";
        [cell.Personal_information_cell1_view1 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else  if (indexPath.row==2) {
        [cell.Personal_information_cell1_view setImage:[UIImage imageNamed:@"works_head.png"]];
        cell.Personal_information_cell1_label.text=@"share小明";
        [cell.Personal_information_cell1_view1 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else  if (indexPath.row==3) {
        [cell.Personal_information_cell1_view setImage:[UIImage imageNamed:@"works_head.png"]];
        cell.Personal_information_cell1_label.text=@"share小雪";
        [cell.Personal_information_cell1_view1 setImage:[UIImage imageNamed:@"直线2.png"]];
    }

    
    return cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==1) {
        ShareXiaoLan* xiaolan=[[ShareXiaoLan alloc]init];
        [self.navigationController pushViewController:xiaolan animated:YES];
    }
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
