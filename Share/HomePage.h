//
//  RootViewController.h
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/26.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomePage : UIViewController<UITableViewDelegate,UITableViewDataSource>
{    UITableView* _tableView;
     NSMutableArray* _homeimagebtnarray;
     NSMutableArray* _homelabel1array;
     NSMutableArray* _homelabel2array;
     NSMutableArray* _homelabel3array;
     NSMutableArray* _homelabel4array;
     NSMutableArray* _homelabel5array;
     NSMutableArray* _homebtn2array;
     NSMutableArray* _homebtn4array;
     NSMutableArray* _homebtn6array;
}
@end
