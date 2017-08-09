//
//  ArticleViewController.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/27.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "ArticleViewController.h"
#import "PersonTableViewCell.h"
@interface ArticleViewController ()

@end

@implementation ArticleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"文章";
    self.view.backgroundColor= [UIColor whiteColor];
    UIFont *font = [UIFont fontWithName:@"HiraKakuProN-W3" size:22];
    NSDictionary *dic = @{NSFontAttributeName:font,NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes =dic;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1]];
    
    UIBarButtonItem*  Article_return = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_img.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressArticle_return)];
    //self.navigationItem.leftBarButtonItem = Article_return;
    // Do any additional setup after loading the view.
    
    UISegmentedControl* Article_segment = [[UISegmentedControl alloc] initWithItems:@[@"精选文章",@"热门推荐",@"全部文章"]];
    Article_segment.frame = CGRectMake(0, 0, 320, 30);
    //    Article_segment.momentary = YES;
    //    Article_segment.selectedSegmentIndex = 0;
    Article_segment.backgroundColor = [UIColor colorWithRed:55/255.0 green:55/255.0 blue:55/255.0 alpha:1];
    Article_segment.tintColor = [UIColor whiteColor];
    [self.view addSubview:Article_segment];
    
    
    
    Atricle_tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, 320, 437) style:UITableViewStylePlain];
    Atricle_tableview.dataSource = self;
    Atricle_tableview.delegate = self;
    //数据视图的头部尾部视图的设定
    Atricle_tableview.tableFooterView = nil;
    Atricle_tableview.tableHeaderView = nil;
    Atricle_tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:Atricle_tableview];
    
    _articleimagebtnarray = [[NSMutableArray alloc] initWithObjects:@"note_img1.png",@"note_img2.png",@"note_img3.png",@"note_img4.png", nil];
    _articlelabel1array = [[NSMutableArray alloc] initWithObjects:@"关于设计反馈的5件事",@"用户设计PK战",@"字体故事",@"版式整理术：高效解决", nil ];
    _articlelabel2array = [[NSMutableArray alloc] initWithObjects:@"",@"share小王",@"share小吕",@"share小王", nil];
    _articlelabel3array = [[NSMutableArray alloc] initWithObjects:@"share小白",@"脸书VS人人",@"设计文章-经验-设计观点",@"多风格要求", nil];
    _articlelabel4array = [[NSMutableArray alloc] initWithObjects:@"设计文章-原创-理论",@"设计文章-原创-WebFlash",@"45分钟前",@"4小时前", nil];
    _articlelabel5array = [[NSMutableArray alloc] initWithObjects:@"16分钟前",@"17分钟前",@"",@"",nil];
    _articlebtn2array = [[NSMutableArray alloc] initWithObjects:@"23",@"34",@"456",@"546", nil];
    _articlebtn4array = [[NSMutableArray alloc] initWithObjects:@"76",@"98",@"42",@"90", nil];
    _articlebtn6array = [[NSMutableArray alloc] initWithObjects:@"34",@"67",@"82",@"583", nil];
    

}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    PersonTableViewCell* cell = [Atricle_tableview dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil) {
        cell = [[PersonTableViewCell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    
    [cell.imageviewbtn setImage:[UIImage imageNamed:[_articleimagebtnarray objectAtIndex:indexPath.section]] forState:UIControlStateNormal];
    
    cell.homelable1.text = [_articlelabel1array objectAtIndex:indexPath.section];
    //    cell.homelable2.text = [_homelable2array objectAtIndex:indexPath.section];
    cell.homelable3.text = [_articlelabel3array objectAtIndex:indexPath.section];
    cell.homelable4.text = [_articlelabel4array objectAtIndex:indexPath.section];
    cell.homelable5.text = [_articlelabel5array objectAtIndex:indexPath.section];
    
    UIImage * home_image1 =  [UIImage imageNamed:@"button_zan.png"];
    home_image1 = [home_image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage1 setImage:home_image1 forState:UIControlStateNormal];
    UIImage * home_image2 =  [UIImage imageNamed:@"button_guanzhu.png"];
    home_image2 = [home_image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage3 setImage:home_image2 forState:UIControlStateNormal];
    UIImage * home_image3 =  [UIImage imageNamed:@"button_share.png"];
    home_image3 = [home_image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage5 setImage:home_image3 forState:UIControlStateNormal];
    [cell.homeimage2 setTitle:[_articlebtn2array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    [cell.homeimage4 setTitle:[_articlebtn4array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    [cell.homeimage6 setTitle:[_articlebtn6array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
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

-(void) pressArticle_return
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
