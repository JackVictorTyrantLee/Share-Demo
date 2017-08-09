//
//  ActivityViewController.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/27.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "ActivityViewController.h"
#import "Active_cell.h"
@interface ActivityViewController ()

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor= [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    self.navigationItem.title= @"活动";
    UIFont *font = [UIFont fontWithName:@"HiraKakuProN-W3" size:22];
    NSDictionary *dic = @{NSFontAttributeName:font,NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes =dic;
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1]];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    UIBarButtonItem*  Active_return = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_img.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressActive_return)];
    
    //self.navigationItem.leftBarButtonItem = Active_return;
    
    
    Active_tableview = [[UITableView alloc] initWithFrame:CGRectMake(10, 0, 300, 507)];
    Active_tableview.delegate = self;
    Active_tableview.dataSource = self;
    Active_tableview.tableFooterView = nil;
    Active_tableview.tableHeaderView = nil;
    Active_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:Active_tableview];
 
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* strcell = @"cell";
    Active_cell* cell = [Active_tableview  dequeueReusableCellWithIdentifier:strcell];
    if (cell == nil) {
        cell = [[Active_cell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:strcell];
    }
    if (indexPath.section == 0) {
        [cell.Active_btn setImage:[UIImage imageNamed:@"active_img1.png"] forState:UIControlStateNormal];
        cell.Active_label.text = @"下厨也要美美的，从一条围裙开始-六月鲜围裙创意设计大赛";
    }
    if (indexPath.section == 1) {
        [cell.Active_btn setImage:[UIImage imageNamed:@"active_img2.png"] forState:UIControlStateNormal];
        cell.Active_label.text = @"MIUI主题市场让你的创意改变世界";
    }
    if (indexPath.section == 2) {
        [cell.Active_btn setImage:[UIImage imageNamed:@"active_img3.png"] forState:UIControlStateNormal];
        cell.Active_label.text = @"华为花粉吉祥物设计大赛";
    }
    
    return cell;
}
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

-(void) pressActive_return
{
    
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
