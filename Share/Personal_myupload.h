//
//  Personal_myupload.h
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Personal_myupload : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    UITableView* Personal_myupload_tableview;
    NSMutableArray* Personal_myuploadimagebtnarray;
    NSMutableArray* Personal_myuploadlabel1array;
    NSMutableArray* Personal_myuploadlabel2array;
    NSMutableArray* Personal_myuploadlabel3array;
    NSMutableArray* Personal_myuploadlabel4array;
    NSMutableArray* Personal_myuploadlabel5array;
    NSMutableArray* Personal_myuploadbtn2array;
    NSMutableArray* Personal_myuploadbtn4array;
    NSMutableArray* Personal_myuploadbtn6array;
}

@end
