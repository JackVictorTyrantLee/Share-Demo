//
//  ActivityViewController.h
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/27.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>
{
    UITableView* Active_tableview;
}

@end
