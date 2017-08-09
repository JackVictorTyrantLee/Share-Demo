//
//  ArticleViewController.h
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/27.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticleViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    UITableView* Atricle_tableview;
    NSMutableArray* _articleimagebtnarray;
    NSMutableArray* _articlelabel1array;
    NSMutableArray* _articlelabel2array;
    NSMutableArray* _articlelabel3array;
    NSMutableArray* _articlelabel4array;
    NSMutableArray* _articlelabel5array;
    NSMutableArray* _articlebtn2array;
    NSMutableArray* _articlebtn4array;
    NSMutableArray* _articlebtn6array;
}

@end
