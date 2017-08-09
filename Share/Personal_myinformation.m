//
//  Personal_myinformation.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Personal_myinformation.h"
#import "Personal_cell.h"
#import "Personal_information_1.h"
#import "Personal_information_2.h"

@interface Personal_myinformation ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray* Personal_myinformation_array1;
    NSMutableArray* Personal_myinformation_array2;
}

@end

@implementation Personal_myinformation

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor] ;
    UIView *Search_upload_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    UIButton *Search_upload_btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
    [Search_upload_btn setImage:[UIImage imageNamed:@"back_img.png"] forState:UIControlStateNormal];
    [Search_upload_view addSubview:Search_upload_btn];
    [Search_upload_btn addTarget:self action:@selector(Search_upload_back) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *Search_upload_lab = [[UILabel alloc] initWithFrame:CGRectMake(35,0, 80, 20)];
    Search_upload_lab.text = @"我的信息";
    Search_upload_lab.textColor = [UIColor whiteColor];
    Search_upload_lab.font = [UIFont systemFontOfSize:13];
    [Search_upload_view addSubview:Search_upload_lab];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
    // Do any additional setup after loading the view.
    
    Personal_information_tableview = [[UITableView alloc ]initWithFrame:CGRectMake(-10, 0, 330, 230)];
    Personal_information_tableview.delegate = self;
    Personal_information_tableview.dataSource = self;
    Personal_information_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:Personal_information_tableview];
    
    Personal_myinformation_array1 = [[NSMutableArray alloc] initWithObjects:@"评论",@"推荐我的",@"新关注的",@"私信",@"活动通知", nil];
    Personal_myinformation_array2 =  [[NSMutableArray alloc] initWithObjects:@"7",@"9",@"5",@"4",@"2", nil ];

}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    Personal_cell* cell = [Personal_information_tableview dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil)
    {
        cell = [[Personal_cell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    cell.Personal_cell_label.text = [Personal_myinformation_array1 objectAtIndex:indexPath.row];
    cell.Personal_cell_label2 .text = [Personal_myinformation_array2 objectAtIndex:indexPath.row];
    [cell.Personal_cell_view2 setImage:[UIImage imageNamed:@"直线2.png"]];
    [cell.Personal_cell_btn setImage:[UIImage imageNamed:@"img3.png"] forState:UIControlStateNormal];
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 2) {
        Personal_information_1*  Personal_information_1new = [[Personal_information_1 alloc]init];
        [self.navigationController pushViewController:Personal_information_1new animated:YES];
    }
    if (indexPath.row == 3) {
        Personal_information_2* Personal_information_2new = [[Personal_information_2 alloc]init];
        [self.navigationController pushViewController:Personal_information_2new animated:YES];
    }
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
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
