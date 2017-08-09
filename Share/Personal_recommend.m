//
//  Personal_recommed.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Personal_recommend.h"
#import "PersonTableViewCell.h" 
@interface Personal_recommend ()

@end

@implementation Personal_recommend

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
    Search_upload_lab.text = @"我的上传";
    Search_upload_lab.textColor = [UIColor whiteColor];
    Search_upload_lab.font = [UIFont systemFontOfSize:13];
    [Search_upload_view addSubview:Search_upload_lab];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
    // Do any additional setup after loading the view.
    
    Personal_recommend_tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320,507) style:UITableViewStylePlain];
    Personal_recommend_tableview.dataSource = self;
    Personal_recommend_tableview.delegate = self;
    //数据视图的头部尾部视图的设定
    Personal_recommend_tableview.tableFooterView = nil;
    Personal_recommend_tableview.tableHeaderView = nil;
    Personal_recommend_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:Personal_recommend_tableview];
    
    Personal_recommendimagebtnarray = [[NSMutableArray alloc] initWithObjects:@"list_img1.png",@"list_img2.png",@"list_img3.png",@"note_img3.png",@"note_img4.png", nil];
    Personal_recommendlabel1array = [[NSMutableArray alloc] initWithObjects:@"匆匆那年",@"国外画册欣赏",@"collection扁平设计",@"字体故事",@"版式整理术：高效解决", nil ];
    Personal_recommendlabel2array = [[NSMutableArray alloc] initWithObjects:@"",@"share小王",@"share小吕",@"share小王", nil];
    Personal_recommendlabel3array = [[NSMutableArray alloc] initWithObjects:@"原创-摄影-练习习作",@"share小王",@"share小吕",@"设计文章-经验-设计观点",@"多风格要求", nil];
    Personal_recommendlabel4array = [[NSMutableArray alloc] initWithObjects:@"10分钟前",@"平面设计-画册设计",@"平面设计-海报设计",@"45分钟前",@"设计文章-原创-WebFlash", nil];
    Personal_recommendlabel5array = [[NSMutableArray alloc] initWithObjects:@"16分钟前",@"17分钟前",@"",@"",@"",nil];
    Personal_recommendbtn2array = [[NSMutableArray alloc] initWithObjects:@"23",@"34",@"456",@"546", @"345",nil];
    Personal_recommendbtn4array = [[NSMutableArray alloc] initWithObjects:@"76",@"98",@"42",@"90",@"887", nil];
    Personal_recommendbtn6array = [[NSMutableArray alloc] initWithObjects:@"34",@"67",@"82",@"583", @"65",nil];

}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    PersonTableViewCell* cell = [Personal_recommend_tableview dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil) {
        cell = [[PersonTableViewCell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    
    [cell.imageviewbtn setImage:[UIImage imageNamed:[Personal_recommendimagebtnarray objectAtIndex:indexPath.section]] forState:UIControlStateNormal];
    
    cell.homelable1.text = [Personal_recommendlabel1array objectAtIndex:indexPath.section];
    //    cell.homelable2.text = [_homelable2array objectAtIndex:indexPath.section];
    cell.homelable3.text = [Personal_recommendlabel3array objectAtIndex:indexPath.section];
    cell.homelable4.text = [Personal_recommendlabel4array objectAtIndex:indexPath.section];
    cell.homelable5.text = [Personal_recommendlabel5array objectAtIndex:indexPath.section];
    
    UIImage * home_image1 =  [UIImage imageNamed:@"button_zan.png"];
    home_image1 = [home_image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage1 setImage:home_image1 forState:UIControlStateNormal];
    UIImage * home_image2 =  [UIImage imageNamed:@"button_guanzhu.png"];
    home_image2 = [home_image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage3 setImage:home_image2 forState:UIControlStateNormal];
    UIImage * home_image3 =  [UIImage imageNamed:@"button_share.png"];
    home_image3 = [home_image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage5 setImage:home_image3 forState:UIControlStateNormal];
    [cell.homeimage2 setTitle:[Personal_recommendbtn2array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    [cell.homeimage4 setTitle:[Personal_recommendbtn4array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    [cell.homeimage6 setTitle:[Personal_recommendbtn6array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    return cell;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
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
    return 120;
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
