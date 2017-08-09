//
//  LXRoot.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/1.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "LXRoot.h"

@interface LXRoot ()

@end

@implementation LXRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.hidden = YES;
    
    self.view.backgroundColor = [UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1];
    
    self.navigationController.navigationBar.hidden = YES;

    UIImageView *stratView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/jackvictortyrantlee/Desktop/kaiji_logo.psd"]];
    
    stratView.frame = CGRectMake(100, 115, 120, 120);
    
    UILabel* stratview1  = [[UILabel alloc] initWithFrame:CGRectMake(115, 245, 100, 50)];
    stratview1.text = @"SHARE";
    stratview1.font = [UIFont systemFontOfSize:30];
    //    stratview1.font = [UIFont fontWithName: @"Hiragino Kaku Gothic ** W6 " size:50];
    [stratview1 setTextColor: [UIColor whiteColor]];
    
    UILabel* stratview2 = [[UILabel alloc] initWithFrame:CGRectMake(35, 315, 280, 50)];
    stratview2.text = @"Don't shy 好东西就是要晒";
    stratview2.font = [UIFont fontWithName:@"Zapfino" size:18];
    [stratview2 setTextColor:[UIColor whiteColor]];
    
    [self.view addSubview:stratView];
    [self.view addSubview:stratview1];
    [self.view addSubview:stratview2];
    

}
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ViewController*  stratlogin = [[ViewController alloc] init];
    
    [self.navigationController pushViewController:stratlogin animated:YES];
    
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
