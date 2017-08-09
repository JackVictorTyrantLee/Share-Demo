//
//  SearchPage.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/1.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "SearchPage_Search.h"
#import "PersonTableViewCell.h"
@interface SearchPage_Search ()
{
    UISearchBar* Search_view;
}

@end

@implementation SearchPage_Search

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    self.navigationItem.title = @"搜索";
    UIFont *font = [UIFont fontWithName:@"HiraKakuProN-W3" size:22];
    NSDictionary *dic = @{NSFontAttributeName:font,NSForegroundColorAttributeName: [UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes =dic;
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    UIBarButtonItem*  item_return = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_img.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressItem_return)];
    UIBarButtonItem*  item_sear = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(pressItem_sear)];
    
    self.navigationItem.leftBarButtonItem = item_return;
    //self.navigationItem.rightBarButtonItem = item_sear;

    
    _searchTable_view  = [[UITableView alloc] initWithFrame:CGRectMake(0,40, 320, 507) style:UITableViewStylePlain];
    _searchTable_view.dataSource = self;
    _searchTable_view.delegate = self;
    
    //数据视图的头部尾部视图的设定
    _searchTable_view.tableFooterView = nil;
    _searchTable_view.tableHeaderView = nil;
    _searchTable_view.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_searchTable_view];
    
    
    
    Search_view = [[UISearchBar alloc] initWithFrame:CGRectMake(10, 10, 300, 30)];
    //设置占位符
    Search_view.placeholder = @"大白";
    //设置显示取消按钮
    //    Search_view.showsSearchResultsButton = YES;
    //设置风格
    Search_view.searchBarStyle = UISearchBarStyleMinimal;
    //设置颜色
    Search_view.barTintColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    
    [self.view addSubview:Search_view];

}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    PersonTableViewCell* cell = [_searchTable_view dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil) {
        cell = [[PersonTableViewCell alloc ] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    
    if (indexPath.section == 0)
    {
        UIImage* dabaiimage1 = [UIImage imageNamed:@"大白_icon.png"];
        dabaiimage1 = [dabaiimage1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [cell.imageviewbtn setImage:dabaiimage1 forState:UIControlStateNormal];
        cell.homelable1.text = @"Icon of Baymax";
        cell.homelable3.text = @"share小白";
        cell.homelable4.text = @"原创-UIicon";
        cell.homelable5.text = @"15分钟前";
        [cell.homeimage2 setTitle:@"102" forState:UIControlStateNormal];
        [cell.homeimage4 setTitle:@"66" forState:UIControlStateNormal];
        [cell.homeimage6 setTitle:@"84" forState:UIControlStateNormal];
        [cell.homeimage1 setImage:[UIImage imageNamed:@"button_zan.png"] forState:UIControlStateNormal];
        [cell.homeimage3 setImage:[UIImage imageNamed:@"button_guanzhu.png"] forState:UIControlStateNormal];
        [cell.homeimage5 setImage:[UIImage imageNamed:@"button_share.png"] forState:UIControlStateNormal];
    }
    else if (indexPath.section == 1)
    {
        UIImage* dabaiimage2 = [UIImage imageNamed:@"大白_img.png"];
        dabaiimage2 = [dabaiimage2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [cell.imageviewbtn setImage:dabaiimage2 forState:UIControlStateNormal];
        cell.homelable1.text = @"每个人都需要一个大白";
        cell.homelable3.text = @"share小王";
        cell.homelable4.text = @"原创作品-摄影";
        cell.homelable5.text = @"1个月前";
        [cell.homeimage2 setTitle:@"1234" forState:UIControlStateNormal];
        [cell.homeimage4 setTitle:@"662" forState:UIControlStateNormal];
        [cell.homeimage6 setTitle:@"4" forState:UIControlStateNormal];
        [cell.homeimage1 setImage:[UIImage imageNamed:@"button_zan.png"] forState:UIControlStateNormal];
        [cell.homeimage3 setImage:[UIImage imageNamed:@"button_guanzhu.png"] forState:UIControlStateNormal];
        [cell.homeimage5 setImage:[UIImage imageNamed:@"button_share.png"] forState:UIControlStateNormal];
    }
    return cell;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
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
-(void)pressItem_return
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void) pressItem_sear
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
