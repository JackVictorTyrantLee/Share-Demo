//
//  Personal_recommed.h
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Personal_recommend : UIViewController
<UITableViewDelegate,UITableViewDataSource>
{
    UITableView* Personal_recommend_tableview;
    NSMutableArray* Personal_recommendimagebtnarray;
    NSMutableArray* Personal_recommendlabel1array;
    NSMutableArray* Personal_recommendlabel2array;
    NSMutableArray* Personal_recommendlabel3array;
    NSMutableArray* Personal_recommendlabel4array;
    NSMutableArray* Personal_recommendlabel5array;
    NSMutableArray* Personal_recommendbtn2array;
    NSMutableArray* Personal_recommendbtn4array;
    NSMutableArray* Personal_recommendbtn6array;
}

@end
