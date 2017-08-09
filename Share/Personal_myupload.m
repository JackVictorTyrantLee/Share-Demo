//
//  Personal_myupload.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Personal_myupload.h"
#import "PersonTableViewCell.h"
@interface Personal_myupload ()

@end

@implementation Personal_myupload

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
    
    UIView* personal_upload_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    personal_upload_view.backgroundColor = [UIColor blackColor];
    
    UIButton* personal_upload_btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    personal_upload_btn1.frame = CGRectMake(10, 5, 80, 20);
    [personal_upload_btn1 setTitle:@"上传时间" forState:UIControlStateNormal];
    personal_upload_btn1.tintColor = [UIColor whiteColor];
    personal_upload_btn1.titleLabel.font = [UIFont systemFontOfSize:13];
    
    UIButton* personal_upload_btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    personal_upload_btn2.frame = CGRectMake(120, 5, 80, 20);
    [personal_upload_btn2 setTitle:@"推荐最多" forState:UIControlStateNormal];
    personal_upload_btn2.tintColor = [UIColor whiteColor];
    personal_upload_btn2.titleLabel.font = [UIFont systemFontOfSize:13];
    
    UIButton* personal_upload_btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    personal_upload_btn3.frame = CGRectMake(230, 5, 80, 20);
    [personal_upload_btn3 setTitle:@"分享最多" forState:UIControlStateNormal];
    personal_upload_btn3.tintColor = [UIColor whiteColor];
    personal_upload_btn3.titleLabel.font = [UIFont systemFontOfSize:13];
    
    UIImageView* personal_upload_image1 = [[UIImageView alloc] initWithFrame:CGRectMake(104, 5, 3, 20)];
    personal_upload_image1.image  = [UIImage imageNamed:@"essay_line.png"];
    
    UIImageView* personal_upload_image2 = [[UIImageView alloc] initWithFrame:CGRectMake(214, 5, 3, 20)];
    personal_upload_image2.image  = [UIImage imageNamed:@"essay_line.png"];
    
    [personal_upload_view addSubview:personal_upload_btn1];
    [personal_upload_view addSubview:personal_upload_btn2];
    [personal_upload_view addSubview:personal_upload_btn3];
    [personal_upload_view addSubview:personal_upload_image1];
    [personal_upload_view addSubview:personal_upload_image2];
    
    [self.view addSubview:personal_upload_view];
    
    
    Personal_myupload_tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, 320,480) style:UITableViewStylePlain];
    Personal_myupload_tableview.dataSource = self;
    Personal_myupload_tableview.delegate = self;
    //数据视图的头部尾部视图的设定
    Personal_myupload_tableview.tableFooterView = nil;
    Personal_myupload_tableview.tableHeaderView = nil;
    Personal_myupload_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:Personal_myupload_tableview];
    
    Personal_myuploadimagebtnarray = [[NSMutableArray alloc] initWithObjects:@"list_img1.png",@"note_img1.png",@"note_img2.png",@"note_img3.png", nil];
    Personal_myuploadlabel1array = [[NSMutableArray alloc] initWithObjects:@"匆匆那年",@"关于设计反馈的5件事",@"用户设计PK战",@"字体故事", nil ];
    Personal_myuploadlabel2array = [[NSMutableArray alloc] initWithObjects:@"",@"share小王",@"share小吕",@"share小王", nil];
    Personal_myuploadlabel3array = [[NSMutableArray alloc] initWithObjects:@"share小白",@"脸书VS人人",@"设计文章-经验-设计观点",@"多风格要求", nil];
    Personal_myuploadlabel4array = [[NSMutableArray alloc] initWithObjects:@"设计文章-原创-理论",@"设计文章-原创-WebFlash",@"45分钟前",@"4小时前", nil];
    Personal_myuploadlabel5array = [[NSMutableArray alloc] initWithObjects:@"16分钟前",@"17分钟前",@"",@"",nil];
    Personal_myuploadbtn2array = [[NSMutableArray alloc] initWithObjects:@"23",@"34",@"456",@"546", nil];
    Personal_myuploadbtn4array = [[NSMutableArray alloc] initWithObjects:@"76",@"98",@"42",@"90", nil];
    Personal_myuploadbtn6array = [[NSMutableArray alloc] initWithObjects:@"34",@"67",@"82",@"583", nil];
    

}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    PersonTableViewCell* cell = [Personal_myupload_tableview dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil) {
        cell = [[PersonTableViewCell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    
    [cell.imageviewbtn setImage:[UIImage imageNamed:[Personal_myuploadimagebtnarray objectAtIndex:indexPath.section]] forState:UIControlStateNormal];
    
    cell.homelable1.text = [Personal_myuploadlabel1array objectAtIndex:indexPath.section];
    //    cell.homelable2.text = [_homelable2array objectAtIndex:indexPath.section];
    cell.homelable3.text = [Personal_myuploadlabel3array objectAtIndex:indexPath.section];
    cell.homelable4.text = [Personal_myuploadlabel4array objectAtIndex:indexPath.section];
    cell.homelable5.text = [Personal_myuploadlabel5array objectAtIndex:indexPath.section];
    
    UIImage * home_image1 =  [UIImage imageNamed:@"button_zan.png"];
    home_image1 = [home_image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage1 setImage:home_image1 forState:UIControlStateNormal];
    UIImage * home_image2 =  [UIImage imageNamed:@"button_guanzhu.png"];
    home_image2 = [home_image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage3 setImage:home_image2 forState:UIControlStateNormal];
    UIImage * home_image3 =  [UIImage imageNamed:@"button_share.png"];
    home_image3 = [home_image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage5 setImage:home_image3 forState:UIControlStateNormal];
    [cell.homeimage2 setTitle:[Personal_myuploadbtn2array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    [cell.homeimage4 setTitle:[Personal_myuploadbtn4array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    [cell.homeimage6 setTitle:[Personal_myuploadbtn6array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    return cell;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
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
