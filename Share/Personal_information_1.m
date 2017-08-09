//
//  Personal_information_1.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Personal_information_1.h"
#import "Personal_information_cell.h"
@interface Personal_information_1 ()

@end

@implementation Personal_information_1

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
    // Do any additional setup after loading the view.
    
    Personal_information_cell1_tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 400)];
    Personal_information_cell1_tableview.delegate = self;
    Personal_information_cell1_tableview.dataSource = self;
    Personal_information_cell1_tableview.tableHeaderView = nil;
    Personal_information_cell1_tableview.tableFooterView = nil;
    Personal_information_cell1_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:Personal_information_cell1_tableview];
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"cell";
    Personal_information_cell* cell = [Personal_information_cell1_tableview dequeueReusableCellWithIdentifier:str];
    if (cell == nil) {
        cell = [[Personal_information_cell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
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
    else  if (indexPath.row==4) {
        [cell.Personal_information_cell1_view setImage:[UIImage imageNamed:@"works_head.png"]];
        cell.Personal_information_cell1_label.text=@"share萌萌";
        [cell.Personal_information_cell1_view1 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    else  if (indexPath.row==5) {
        [cell.Personal_information_cell1_view setImage:[UIImage imageNamed:@"works_head.png"]];
        cell.Personal_information_cell1_label.text=@"shareLity";
        [cell.Personal_information_cell1_view1 setImage:[UIImage imageNamed:@"直线2.png"]];
    }
    UIImage *image1=[UIImage imageNamed:@"guanzhu_normal.png"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image2=[UIImage imageNamed:@"guanzhu_pressed.png"];
    image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.Personal_information_cell1_btn setImage:image1 forState:UIControlStateNormal];
    [cell.Personal_information_cell1_btn setImage:image2 forState:UIControlStateSelected];
    [cell.Personal_information_cell1_btn addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}
-(void)change:(UIButton *)Button
{
    if (Button.selected==NO) {
        Button.selected=YES;
    }else
    {
        Button.selected=NO;
    }
}
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
//-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    return 10;
//}
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
