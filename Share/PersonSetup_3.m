//
//  PersonSetup_3.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "PersonSetup_3.h"
#import "setup_3_cell.h"
@interface PersonSetup_3 ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray* setup3_array ;
}
@end

@implementation PersonSetup_3

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
    Search_upload_lab.text = @"消息设置";
    Search_upload_lab.textColor = [UIColor whiteColor];
    Search_upload_lab.font = [UIFont systemFontOfSize:13];
    [Search_upload_view addSubview:Search_upload_lab];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
    // Do any additional setup after loading the view.
    
    setup3_tableview = [[UITableView alloc] initWithFrame:CGRectMake(-10, 0, 320, 250)];
    setup3_tableview.delegate = self;
    setup3_tableview.dataSource  =self;
    setup3_tableview.tableFooterView = nil;
    setup3_tableview.tableHeaderView = nil;
    setup3_tableview.separatorStyle = UITableViewCellSeparatorStyleSingleLine ;
    [self.view addSubview: setup3_tableview];
    
    setup3_array = [[NSMutableArray alloc] initWithObjects:@"接受新消息通知",@"通知显示栏",@"声音",@"振动",@"关注更新", nil];

}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    setup_3_cell* cell = [setup3_tableview dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil)
    {
        cell = [[setup_3_cell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    cell.setup3_cell_label.text = [setup3_array objectAtIndex:indexPath.row];
    
    UIImage *image1=[UIImage imageNamed:@"my_button_normal.png"];
    image1=[image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image2=[UIImage imageNamed:@"my_button_pressed.png"];
    image2=[image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.setup3_cell_btn setImage:image1 forState:UIControlStateNormal];
    [cell.setup3_cell_btn setImage:image2 forState:UIControlStateSelected];
    [cell.setup3_cell_btn addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
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
