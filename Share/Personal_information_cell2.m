//
//  Personal_information_cell2.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/7.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Personal_information_cell2.h"

@implementation Personal_information_cell2
-(instancetype)  initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    if (self = [super  initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.Personal_information_cell1_view = [[UIImageView alloc] init];
        [self.contentView addSubview:self.Personal_information_cell1_view];
        
        self.Personal_information_cell1_label = [[UILabel alloc] init];
        [self.contentView addSubview:self.Personal_information_cell1_label];
        
        self.Personal_information_cell1_btn= [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:self.Personal_information_cell1_btn];
        
        self.Personal_information_cell1_view1 = [[UIImageView alloc ]init];
        [self.contentView addSubview:self.Personal_information_cell1_view1];
    }
    return self;
}

-(void) layoutSubviews
{
    self.Personal_information_cell1_view.frame = CGRectMake(10, 10, 60, 60);
    self.Personal_information_cell1_label.frame = CGRectMake(75, 15, 150, 30);
    self.Personal_information_cell1_label.font = [UIFont systemFontOfSize:14];
    self.Personal_information_cell1_btn.frame = CGRectMake(240,20, 50, 20);
    self.Personal_information_cell1_view1.frame = CGRectMake(45, 5, 100, 35);
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
