//
//  ShareXiaoLan.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/7.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "ShareXiaoLan.h"
#define H [UIScreen mainScreen].bounds.size.height
#define W [UIScreen mainScreen].bounds.size.width
@interface ShareXiaoLan ()
<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tab;
    UITextField *tf;
    NSMutableArray *messageArray;
    NSMutableArray *rowheightArray;
    NSNumber *rowheight;
}
@end

@implementation ShareXiaoLan

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    self.tabBarController.tabBar.hidden=YES;
//    UIImage *image=[UIImage imageNamed:@"back_img"];
//    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    UIButton *butto=[UIButton buttonWithType:UIButtonTypeSystem];
//    [butto setImage:image forState:UIControlStateNormal];
//    [butto setTitle:@"与share小兰的对话" forState:UIControlStateNormal];
//    [butto setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [butto.titleLabel setFont:[UIFont systemFontOfSize:15]];
//    [butto setBackgroundColor:[UIColor colorWithRed:0.21f green:0.56f blue:0.80f alpha:1.00f]];
//    butto.imageEdgeInsets = UIEdgeInsetsMake(0.0, -20, 0.0, 0);
//    butto.frame =CGRectMake(0, 500, 160, 40);
//    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:butto];
//    
//    [butto addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *Search_upload_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    UIButton *Search_upload_btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 20)];
    [Search_upload_btn setImage:[UIImage imageNamed:@"back_img.png"] forState:UIControlStateNormal];
    [Search_upload_view addSubview:Search_upload_btn];
    [Search_upload_btn addTarget:self action:@selector(Search_upload_back) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *Search_upload_lab = [[UILabel alloc] initWithFrame:CGRectMake(35,0, 200, 20)];
    Search_upload_lab.text = @"与share小兰对话";
    Search_upload_lab.textColor = [UIColor whiteColor];
    Search_upload_lab.font = [UIFont systemFontOfSize:13];
    [Search_upload_view addSubview:Search_upload_lab];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:Search_upload_view];
    tf =[[UITextField alloc]initWithFrame:CGRectMake(W*0.07, W*0.01, W*0.75, H*0.06)];
    tf.borderStyle=UITextBorderStyleRoundedRect;
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor=[UIColor colorWithRed:69/255.0 green:141/255.0 blue:203/255.0 alpha:1];
    [btn setTitle:@"发送" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(Send ) forControlEvents:UIControlEventTouchUpInside];
    btn.frame=CGRectMake(W * 0.82 + W * 0.01, W * 0.01, W * 0.15, H * 0.06);
    btn.layer.borderWidth=1;
    btn.layer.cornerRadius=10;
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, H - 44 - 64, W, 44)];
    view.backgroundColor=[UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    view.tag=101;
    [view addSubview:tf];
    [view addSubview:btn];
    
    tab=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, W, H-44*2) style:UITableViewStylePlain];
    tab.delegate=self;
    tab.dataSource=self;
    
    //分割线
    tab.separatorStyle=UITableViewCellSeparatorStyleNone;
    //关闭垂直方向滚动条
    tab.showsVerticalScrollIndicator=NO;
    [self.view addSubview:tab];
    [self.view addSubview: view];
    [self.view bringSubviewToFront:view];
    
    
    //聊天数据
    
    messageArray=[NSMutableArray arrayWithObjects:@"你拍的真不错",@"谢谢，已关注你",@"好专业的照片，非常喜欢这种风格，期待你更好的作品",@"嗯嗯，好的", nil];
    rowheightArray =[NSMutableArray array];
    for(NSString *str in messageArray){
        NSDictionary *dic=@{NSFontAttributeName :[UIFont systemFontOfSize: 15]};
        CGSize size=[str boundingRectWithSize:CGSizeMake(W*0.6, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
        
        int height=size.height +W*0.15;
        rowheight =[NSNumber numberWithInt:height];
        [rowheightArray addObject:rowheight];
    }
    // 键盘回收事件
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillAppear :) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisAppear:) name:UIKeyboardWillHideNotification object:nil];
}
-(void)Send {
    [messageArray addObject:tf.text];
    NSDictionary *dic=@{NSFontAttributeName :[UIFont systemFontOfSize:18]};
    //自适应高度，并计算
    CGSize size =[tf.text boundingRectWithSize:CGSizeMake(W*0.6, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    int height=size.height +W*0.15;
    rowheight =[NSNumber numberWithInteger:height];
    [rowheightArray addObject:rowheight];
    
    //插入一条新cell
    NSIndexPath *indexPath =[NSIndexPath indexPathForRow:(messageArray.count-1) inSection:0];
    [tab insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationBottom];
    
    //更新tableView
    [tab reloadData];
    //滚动界面
    [tab scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
    //清空 textFied
    tf.text=@"";
}
// 点击空白回收键盘
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [tf resignFirstResponder];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return messageArray.count;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if(!cell)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    while([cell.contentView.subviews lastObject]!=nil)
    {
        [(UIView *)[cell.contentView.subviews lastObject]removeFromSuperview];
    }
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    //一人一句话
    if(indexPath.row%2!=0)
    {
        // 设置头像
        UIImageView *imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img2"]];
        imageView.frame = CGRectMake(W * 0.01, W * 0.05, W * 0.1, W * 0.1);
        [cell.contentView addSubview:imageView];
        
        //设置聊天气泡
        UIImageView *imageviewbubble=[[UIImageView alloc]init];
        imageviewbubble.backgroundColor=[UIColor colorWithRed:211/225.0 green:211/225.0 blue:211/225.0 alpha:0.5];
        
        //设置对话框
        UILabel *label =[[UILabel alloc]init];
        label.numberOfLines =0;
        label.text=messageArray[indexPath.row];
        label.font=[UIFont systemFontOfSize:18];
        NSDictionary *dic=@{NSFontAttributeName:label.font};
        //自适应高度
        CGSize size =[label.text boundingRectWithSize:CGSizeMake(W*0.6, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
        label.frame=CGRectMake(W*0.16, W*0.05, size.width, size.height);
        imageviewbubble.frame=CGRectMake(W*0.13, W * 0.01, size.width + W * 0.10, size.height + W * 0.10);
        [cell.contentView addSubview:imageviewbubble];
        [cell.contentView addSubview:label];
        
    }
    else{
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img1"]];
        imageView.frame = CGRectMake(W - W * 0.11, W * 0.05, W * 0.1, W * 0.1);
        [cell.contentView addSubview:imageView];
        
        UILabel *label = [[UILabel alloc] init];
        label.numberOfLines = 0;
        label.text = messageArray[indexPath.row];
        label.font = [UIFont systemFontOfSize:18];
        NSDictionary* attri = @{NSFontAttributeName:label.font};
        CGSize size = [label.text boundingRectWithSize:CGSizeMake(W*0.6, MAXFLOAT)  options:NSStringDrawingUsesLineFragmentOrigin attributes:attri context:nil].size;
        
        label.frame = CGRectMake(W - W * 0.14 - size.width, W * 0.05, size.width, size.height);
        
        UIImageView *imageviewbubble = [[UIImageView alloc]init];
        imageviewbubble.backgroundColor = [UIColor colorWithRed:211/225.0 green:211/225.0 blue:211/225.0 alpha:0.5];
        imageviewbubble.frame = CGRectMake(W * 0.8 - size.width, W * 0.01, size.width + W * 0.08, size.height + W * 0.10);
        [cell.contentView addSubview:imageviewbubble];
        [cell.contentView addSubview:label];
        
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSNumber *height=rowheightArray[indexPath.row];
    int rowheigh=[height intValue];
    return rowheigh +W*0.05;
}

-(void)keyboardWillDisAppear :(NSNotification *)notification
{
    CGFloat duration =[notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    [UIView animateWithDuration:duration animations:^{
        self.view.transform =CGAffineTransformMakeTranslation(0, 0);
    }];
}

-(void)keyboardWillAppear :(NSNotification *)notification{
    CGRect ketboardFrame =[notification.userInfo[UIKeyboardFrameEndUserInfoKey]CGRectValue];
    CGFloat duration =[notification.userInfo[UIKeyboardAnimationDurationUserInfoKey]doubleValue];
    CGFloat keyboardy=ketboardFrame.origin.y;
    [UIView animateWithDuration:duration animations:^{
        self.view.transform=CGAffineTransformMakeTranslation(0, keyboardy - self.view.frame.size.height - 64);
    }];
}
-(void)Search_upload_back
{
    self.tabBarController.tabBar.hidden=NO;
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.view endEditing:YES];
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
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
