//
//  ViewController.h
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/26.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "zhuceViewController.h"
#import "HomePage.h"
#import "AppDelegate.h"
@interface ViewController : UIViewController<UIAlertViewDelegate>
{
    UIImageView *_loginimage;
    
    UILabel *_laginview;
    
    UITextField *_logintext1;
    UITextField *_logintext2;
}
@property(retain,nonatomic) UIAlertAction *loginalert;

@end

