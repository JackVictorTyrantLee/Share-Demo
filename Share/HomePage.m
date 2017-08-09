//
//  RootViewController.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/26.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "HomePage.h"
#import "SearchViewController.h"
#import "ToPianGunDong.h"
#import "PersonTableViewCell.h"
@interface HomePage ()<UIScrollViewDelegate>
{
    UIPageControl *home_PageControl;
    UIScrollView *home_ScrollView;
    NSTimer *scro_timer;
}
@end

@implementation HomePage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self.navigationController.navigationBar setTranslucent:NO];
//    self.view.backgroundColor=[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1];
//    self.navigationItem.title=@"SHARE";
//    UIFont *font=[UIFont fontWithName:@"HiraKakuProN-W3" size:22];
//    NSDictionary *dic=@{NSFontAttributeName:font,NSForegroundColorAttributeName:[UIColor whiteColor]};
//    NSLog(@"aaaaaaaaaaa");
//    self.navigationController.navigationBar.titleTextAttributes=dic;
//    
    
    
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    [self.navigationController.navigationBar setTranslucent:YES];
     self.navigationItem.title=@"SHARE";
     UIFont *font=[UIFont fontWithName:@"HiraKakuProN-W3" size:22];
     NSDictionary *dic=@{NSFontAttributeName:font,NSForegroundColorAttributeName:[UIColor whiteColor]};
     self.navigationController.navigationBar.titleTextAttributes=dic;
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1]];
    
    
    
    
    
    
    
    
    
    //self.view.backgroundColor=[UIColor  yellowColor];
    //[self.navigationController.navigationBar setTranslucent:NO];
    //self.title=@"首页";
//    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1]];
    
//    UINavigationController *nav=[[UINavigationController alloc]init];
    
//    UITabBarController *tabBar=[[UITabBarController alloc]init];
//    NSMutableArray *array=[[NSMutableArray alloc]init];
//    
//    UIViewController *con1=[[UIViewController alloc]init];
//    con1.view.backgroundColor=[UIColor clearColor];
//    con1.tabBarItem.title=[NSString stringWithFormat:@"1"];
    
//    [array addObject:con1];
//    tabBar.viewControllers=array;
    //[self presentViewController:tabBar animated:YES completion:nil];
    
    
//    ToPianGunDong *dongdu=[[ToPianGunDong alloc]init];
//    [self addChildViewController:dongdu];
//    [self.view addSubview:dongdu.view];
    
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 507) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    //数据视图的头部尾部视图的设定
    _tableView.tableFooterView = nil;
    _tableView.tableHeaderView = nil;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    //自动有调整子视图的大小
    //_tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_tableView];
    
    _homeimagebtnarray = [[NSMutableArray alloc] initWithObjects:@"list_img1.png",@"list_img2.png",@"list_img3.png",@"list_img4.png", nil];
    _homelabel1array = [[NSMutableArray alloc] initWithObjects:@"假日",@"国外画册欣赏",@"collection扁平设计",@"版式整理术：高效解决", nil ];
    _homelabel2array = [[NSMutableArray alloc] initWithObjects:@"share小白", nil];
    _homelabel3array = [[NSMutableArray alloc] initWithObjects:@"原创-插画-练习习作",@"share小王",@"share小吕",@"share小明", nil];
    _homelabel4array = [[NSMutableArray alloc] initWithObjects:@"15分钟前",@"平面设计-画册设计",@"平面设计-海报设计",@"平面设计-风格设计", nil];
    _homelabel5array = [[NSMutableArray alloc] initWithObjects:@"",@"16分钟前",@"17分钟前",@"18分钟前",nil];
    _homebtn2array = [[NSMutableArray alloc] initWithObjects:@"23",@"34",@"456",@"546", nil];
    _homebtn4array = [[NSMutableArray alloc] initWithObjects:@"76",@"98",@"42",@"90", nil];
    _homebtn6array = [[NSMutableArray alloc] initWithObjects:@"34",@"67",@"82",@"583", nil];
    
    
    
    _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 150)];
    home_ScrollView = [[UIScrollView alloc] init];
    home_ScrollView.frame = CGRectMake(0, 0, 320, 150);
    home_ScrollView.pagingEnabled = YES;
    home_ScrollView.showsHorizontalScrollIndicator = NO;
    home_ScrollView.scrollEnabled = YES;
    home_ScrollView.contentSize = CGSizeMake(320*4, 150);
    home_ScrollView.alwaysBounceHorizontal = YES;
    for(int i=0 ; i<4;i++)
    {
        NSString*  home_scro_name = [NSString stringWithFormat:@"main_img%d.png",i+1];
        UIImage* home_scro_image = [UIImage imageNamed:home_scro_name];
        UIImageView*  home_scro_view = [[UIImageView alloc] initWithImage:home_scro_image];
        home_scro_view.frame = CGRectMake(320*i+5, 0, 310, 150);
        [home_ScrollView addSubview:home_scro_view];
    }
    [_tableView.tableHeaderView addSubview:home_ScrollView];
    
    //
    home_PageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(110, 140, 100, 10)];
    home_PageControl.backgroundColor = [UIColor clearColor];
    home_PageControl.numberOfPages = 4;
    home_PageControl.pageIndicatorTintColor = [UIColor whiteColor];
    home_PageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:184/255.0 green:189/255.0 blue:221/255.0 alpha:0.8];
    [home_PageControl addTarget:self action:@selector(PageOn:) forControlEvents:UIControlEventValueChanged ];
    [_tableView.tableHeaderView addSubview:home_PageControl];
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    PersonTableViewCell * cell = [_tableView dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil) {
        cell = [[PersonTableViewCell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    
    [cell.imageviewbtn setImage:[UIImage imageNamed:[_homeimagebtnarray objectAtIndex:indexPath.section]] forState:UIControlStateNormal];
    
    cell.homelable1.text = [_homelabel1array objectAtIndex:indexPath.section];
    //    cell.homelabel2.text = [_homelabel2array objectAtIndex:indexPath.section];
    cell.homelable3.text = [_homelabel3array objectAtIndex:indexPath.section];
    cell.homelable4.text = [_homelabel4array objectAtIndex:indexPath.section];
    cell.homelable5.text = [_homelabel5array objectAtIndex:indexPath.section];
    
    UIImage * home_image1 =  [UIImage imageNamed:@"button_zan.png"];
    home_image1 = [home_image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage1 setImage:home_image1 forState:UIControlStateNormal];
    UIImage * home_image2 =  [UIImage imageNamed:@"button_guanzhu.png"];
    home_image2 = [home_image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage3 setImage:home_image2 forState:UIControlStateNormal];
    UIImage * home_image3 =  [UIImage imageNamed:@"button_share.png"];
    home_image3 = [home_image3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [cell.homeimage5 setImage:home_image3 forState:UIControlStateNormal];
    [cell.homeimage2 setTitle:[_homebtn2array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    [cell.homeimage4 setTitle:[_homebtn4array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
    [cell.homeimage6 setTitle:[_homebtn6array objectAtIndex:indexPath.section] forState:UIControlStateNormal];
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

//
-(void) scrollViewDidScroll:(UIScrollView *)scrollView{}
-(void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{}
-(void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{}
-(void) scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{}
-(void) PageOn:(UIPageControl *) p
{
    home_ScrollView.contentOffset = CGPointMake(320*p.currentPage, 0);
}
-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger number = (NSInteger) scrollView.contentOffset.x/50 ;
    home_PageControl.currentPage = number;
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
