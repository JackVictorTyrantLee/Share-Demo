//
//  SearchViewController.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/27.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "SearchViewController.h"
#import "Search_upload.h"
#import "SearchPage_Search.h"
@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    self.navigationItem.title = @"搜索";
    UIFont *font = [UIFont fontWithName:@"HiraKakuProN-W3" size:22];
    NSDictionary *dic = @{NSFontAttributeName:font,NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes =dic;
     [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:50/255.0 green:132/255.0 blue:206/255.0 alpha:1]];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    UIBarButtonItem*  Search_return = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"img2.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressSearch_sear)];
    self.navigationItem.rightBarButtonItem = Search_return;
//    UIView *Search_upload_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
//    UIButton *Search_upload_btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
//    [Search_upload_btn setImage:[UIImage imageNamed:@"back_img.png"] forState:UIControlStateNormal];
//    [Search_upload_view addSubview:Search_upload_btn];
//    [Search_upload_btn addTarget:self action:@selector(pressSearch_sear) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview: Search_upload_btn];
    // Do any additional setup after loading the view.
    
    Classifybtn = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn.frame = CGRectMake(10, 50, 60, 20);
    [Classifybtn setTitle:@"分类" forState:UIControlStateNormal];
    Classifybtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn setImage:[UIImage imageNamed:@"search_button.png"] forState:UIControlStateNormal];
    Classifybtn.backgroundColor = [UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1];
    [self.view addSubview:Classifybtn];
    
    Classifyimage_under = [[UIImageView alloc] initWithFrame:CGRectMake(10, 70, 300, 2)];
    UIImage* image_under1 = [UIImage imageNamed:@"home_line.png"];
    Classifyimage_under.image = image_under1;
    [self.view addSubview:Classifyimage_under];
    
    Classifybtn_under1 = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn_under1.frame = CGRectMake(10, 85, 70, 25);
    [Classifybtn_under1.layer setMasksToBounds:YES];
    [Classifybtn_under1.layer setCornerRadius:5];
    [Classifybtn_under1 setTitle:@"平面设计" forState:UIControlStateNormal];
    Classifybtn_under1.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn_under1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Classifybtn_under1.backgroundColor = [UIColor whiteColor];
    [Classifybtn_under1 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Classifybtn_under1];
    
    Classifybtn_under2 = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn_under2.frame = CGRectMake(87, 85, 70, 25);
    [Classifybtn_under2.layer setMasksToBounds:YES];
    [Classifybtn_under2.layer setCornerRadius:5];
    [Classifybtn_under2 setTitle:@"网页设计" forState:UIControlStateNormal];
    Classifybtn_under2.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn_under2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Classifybtn_under2.backgroundColor = [UIColor whiteColor];
    [Classifybtn_under2 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Classifybtn_under2];
    
    Classifybtn_under3 = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn_under3.frame = CGRectMake(164, 85, 70, 25);
    [Classifybtn_under3.layer setMasksToBounds:YES];
    [Classifybtn_under3.layer setCornerRadius:5];
    [Classifybtn_under3 setTitle:@"UI/icon" forState:UIControlStateNormal];
    Classifybtn_under3.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn_under3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Classifybtn_under3.backgroundColor = [UIColor whiteColor];
    [Classifybtn_under3 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Classifybtn_under3];
    
    Classifybtn_under4 = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn_under4.frame = CGRectMake(241, 85, 70, 25);
    [Classifybtn_under4.layer setMasksToBounds:YES];
    [Classifybtn_under4.layer setCornerRadius:5];
    [Classifybtn_under4 setTitle:@"插画/手绘" forState:UIControlStateNormal];
    Classifybtn_under4.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn_under4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Classifybtn_under4.backgroundColor = [UIColor whiteColor];
    [Classifybtn_under4 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Classifybtn_under4];
    
    Classifybtn_under5 = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn_under5.frame = CGRectMake(10, 120, 80, 25);
    [Classifybtn_under5.layer setMasksToBounds:YES];
    [Classifybtn_under5.layer setCornerRadius:5];
    [Classifybtn_under5 setTitle:@"虚拟与设计" forState:UIControlStateNormal];
    Classifybtn_under5.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn_under5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Classifybtn_under5.backgroundColor = [UIColor whiteColor];
    [Classifybtn_under5 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Classifybtn_under5];
    
    Classifybtn_under6 = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn_under6.frame = CGRectMake(97, 120, 65, 25);
    [Classifybtn_under6.layer setMasksToBounds:YES];
    [Classifybtn_under6.layer setCornerRadius:5];
    [Classifybtn_under6 setTitle:@"影视" forState:UIControlStateNormal];
    Classifybtn_under6.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn_under6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Classifybtn_under6.backgroundColor = [UIColor whiteColor];
    [Classifybtn_under6 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Classifybtn_under6];
    
    Classifybtn_under7 = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn_under7.frame = CGRectMake(169, 120, 65, 25);
    [Classifybtn_under7.layer setMasksToBounds:YES];
    [Classifybtn_under7.layer setCornerRadius:5];
    [Classifybtn_under7 setTitle:@"摄影" forState:UIControlStateNormal];
    Classifybtn_under7.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn_under7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Classifybtn_under7.backgroundColor = [UIColor whiteColor];
    [Classifybtn_under7 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Classifybtn_under7];
    
    Classifybtn_under8 = [UIButton buttonWithType:UIButtonTypeCustom];
    Classifybtn_under8.frame = CGRectMake(241, 120, 70, 25);
    [Classifybtn_under8.layer setMasksToBounds:YES];
    [Classifybtn_under8.layer setCornerRadius:5];
    [Classifybtn_under8 setTitle:@"其他" forState:UIControlStateNormal];
    Classifybtn_under8.titleLabel.font = [UIFont systemFontOfSize:12];
    [Classifybtn_under8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Classifybtn_under8.backgroundColor = [UIColor whiteColor];
    [Classifybtn_under8 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Classifybtn_under8];
    
    
    //
    Recommendbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    Recommendbtn.frame = CGRectMake(10, 160, 60, 20);
    [Recommendbtn setTitle:@"推荐" forState:UIControlStateNormal];
    Recommendbtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [Recommendbtn setImage:[UIImage imageNamed:@"search_button.png"] forState:UIControlStateNormal];
    Recommendbtn.backgroundColor = [UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1];
    [self.view addSubview:Recommendbtn];
    
    Recommendimage_under  = [[UIImageView alloc] initWithFrame:CGRectMake(10, 180, 300, 2)];
    UIImage* image_under2 = [UIImage imageNamed:@"home_line.png"];
    Recommendimage_under.image = image_under2;
    [self.view addSubview:Recommendimage_under];
    
    Recommendbtn_under1 = [UIButton buttonWithType:UIButtonTypeCustom];
    Recommendbtn_under1.frame = CGRectMake(10, 195, 70, 25);
    [Recommendbtn_under1.layer setMasksToBounds:YES];
    [Recommendbtn_under1.layer setCornerRadius:5];
    [Recommendbtn_under1 setTitle:@"人气最高" forState:UIControlStateNormal];
    Recommendbtn_under1.titleLabel.font = [UIFont systemFontOfSize:12];
    [Recommendbtn_under1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Recommendbtn_under1.backgroundColor = [UIColor whiteColor];
    [Recommendbtn_under1 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Recommendbtn_under1];
    
    Recommendbtn_under2 = [UIButton buttonWithType:UIButtonTypeCustom];
    Recommendbtn_under2.frame = CGRectMake(87, 195, 70, 25);
    [Recommendbtn_under2.layer setMasksToBounds:YES];
    [Recommendbtn_under2.layer setCornerRadius:5];
    [Recommendbtn_under2 setTitle:@"收藏最多" forState:UIControlStateNormal];
    Recommendbtn_under2.titleLabel.font = [UIFont systemFontOfSize:12];
    [Recommendbtn_under2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Recommendbtn_under2.backgroundColor = [UIColor whiteColor];
    [Recommendbtn_under2 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Recommendbtn_under2];
    
    Recommendbtn_under3 = [UIButton buttonWithType:UIButtonTypeCustom];
    Recommendbtn_under3.frame = CGRectMake(164, 195, 70, 25);
    [Recommendbtn_under3.layer setMasksToBounds:YES];
    [Recommendbtn_under3.layer setCornerRadius:5];
    [Recommendbtn_under3 setTitle:@"评论最多" forState:UIControlStateNormal];
    Recommendbtn_under3.titleLabel.font = [UIFont systemFontOfSize:12];
    [Recommendbtn_under3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Recommendbtn_under3.backgroundColor = [UIColor whiteColor];
    [Recommendbtn_under3 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Recommendbtn_under3];
    
    Recommendbtn_under4 = [UIButton buttonWithType:UIButtonTypeCustom];
    Recommendbtn_under4.frame = CGRectMake(241, 195, 70, 25);
    [Recommendbtn_under4.layer setMasksToBounds:YES];
    [Recommendbtn_under4.layer setCornerRadius:5];
    [Recommendbtn_under4 setTitle:@"精选编辑" forState:UIControlStateNormal];
    Recommendbtn_under4.titleLabel.font = [UIFont systemFontOfSize:12];
    [Recommendbtn_under4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Recommendbtn_under4.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:Recommendbtn_under4];
    
    //
    Whilebtn = [UIButton buttonWithType:UIButtonTypeCustom];
    Whilebtn.frame = CGRectMake(10, 235, 60, 20);
    [Whilebtn setTitle:@"推荐" forState:UIControlStateNormal];
    Whilebtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [Whilebtn setImage:[UIImage imageNamed:@"search_button.png"] forState:UIControlStateNormal];
    Whilebtn.backgroundColor = [UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1];
    [self.view addSubview:Whilebtn];
    
    Whileimage_under  = [[UIImageView alloc] initWithFrame:CGRectMake(10, 255, 300, 2)];
    UIImage* image_under3 = [UIImage imageNamed:@"home_line.png"];
    Whileimage_under.image = image_under3;
    [self.view addSubview:Whileimage_under];
    
    Whilebtn_under1 = [UIButton buttonWithType:UIButtonTypeCustom];
    Whilebtn_under1.frame = CGRectMake(10, 275, 70, 25);
    [Whilebtn_under1.layer setMasksToBounds:YES];
    [Whilebtn_under1.layer setCornerRadius:5];
    [Whilebtn_under1 setTitle:@"30分钟" forState:UIControlStateNormal];
    Whilebtn_under1.titleLabel.font = [UIFont systemFontOfSize:12];
    [Whilebtn_under1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Whilebtn_under1.backgroundColor = [UIColor whiteColor];
    [Whilebtn_under1 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Whilebtn_under1];
    
    Whilebtn_under2 = [UIButton buttonWithType:UIButtonTypeCustom];
    Whilebtn_under2.frame = CGRectMake(87, 275, 70, 25);
    [Whilebtn_under2.layer setMasksToBounds:YES];
    [Whilebtn_under2.layer setCornerRadius:5];
    [Whilebtn_under2 setTitle:@"1小时前" forState:UIControlStateNormal];
    Whilebtn_under2.titleLabel.font = [UIFont systemFontOfSize:12];
    [Whilebtn_under2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Whilebtn_under2.backgroundColor = [UIColor whiteColor];
    [Whilebtn_under2 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Whilebtn_under2];
    
    Whilebtn_under3 = [UIButton buttonWithType:UIButtonTypeCustom];
    Whilebtn_under3.frame = CGRectMake(164, 275, 70, 25);
    [Whilebtn_under3.layer setMasksToBounds:YES];
    [Whilebtn_under3.layer setCornerRadius:5];
    [Whilebtn_under3 setTitle:@"1月前" forState:UIControlStateNormal];
    Whilebtn_under3.titleLabel.font = [UIFont systemFontOfSize:12];
    [Whilebtn_under3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Whilebtn_under3.backgroundColor = [UIColor whiteColor];
    [Whilebtn_under3 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Whilebtn_under3];
    
    Whilebtn_under4 = [UIButton buttonWithType:UIButtonTypeCustom];
    Whilebtn_under4.frame = CGRectMake(241, 275, 70, 25);
    [Whilebtn_under4.layer setMasksToBounds:YES];
    [Whilebtn_under4.layer setCornerRadius:5];
    [Whilebtn_under4 setTitle:@"1年前" forState:UIControlStateNormal];
    Whilebtn_under4.titleLabel.font = [UIFont systemFontOfSize:12];
    [Whilebtn_under4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Whilebtn_under4.backgroundColor = [UIColor whiteColor];
    [Whilebtn_under4 addTarget:self action:@selector(dabai) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Whilebtn_under4];
    
    
    UISearchBar *SearchBar=[[UISearchBar alloc] initWithFrame:CGRectMake(10, 10, 300, 30)];
    //设置占位符
    SearchBar.placeholder = @"搜索 用户名 作品分类 文章";
    //设置显示取消按钮
    SearchBar.showsSearchResultsButton = YES;
    //设置风格
    SearchBar.searchBarStyle = UISearchBarStyleMinimal;
    //设置颜色
    SearchBar.barTintColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    //    //设置分段搜索
    //    SearchBar.showsScopeBar = NO;
    //    //设置分段搜索内容
    //    NSArray* Search_Array = [NSArray arrayWithObjects:@"网页",@"贴吧", nil];
    //    SearchBar.scopeButtonTitles = Search_Array;
    //    //设置分段搜索颜色
    //    SearchBar.tintColor = [UIColor blueColor];
    
    [self.view addSubview:SearchBar];
    SearchBar.delegate = self;

    
}

//-(void)Search_upload_back
//{
//    [self.navigationController popViewControllerAnimated:YES];
//}

-(void)dabai
{
    SearchPage_Search* searchpage=[[SearchPage_Search alloc]init];
    [self.navigationController pushViewController:searchpage animated:YES];
}
-(void)pressSearch_return
{
    
}
-(void)pressSearch_sear
{
    Search_upload *searchupload=[[Search_upload alloc]init];
    [self.navigationController pushViewController:searchupload animated:YES];
}
-(IBAction)backButtonPressed:(id)sender{
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
