//
//  Personal_cell.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Personal_cell.h"

@implementation Personal_cell
-(instancetype)  initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    if (self = [super  initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.Personal_cell_view = [[UIImageView alloc] init];
        [self.contentView addSubview:self.Personal_cell_view];
        
        self.Personal_cell_label = [[UILabel alloc] init];
        [self.contentView addSubview:self.Personal_cell_label];
        
        self.Personal_cell_btn= [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:self.Personal_cell_btn];
        
        self.Personal_cell_label2 = [[UILabel alloc] init];
        [self.contentView addSubview: self.Personal_cell_label2];
        
        self.Personal_cell_view2 = [[UIImageView alloc] init];
        [self.contentView addSubview:self.Personal_cell_view2];
        
    }
    return self;
}

-(void) layoutSubviews
{
    self.Personal_cell_view.frame = CGRectMake(20, 15, 15, 15);
    self.Personal_cell_label.frame = CGRectMake(45, 5, 100, 35);
    self.Personal_cell_label.font = [UIFont systemFontOfSize:14];
    self.Personal_cell_btn.frame = CGRectMake(240, 15, 15, 15);
    self.Personal_cell_label2.frame = CGRectMake(270, 15, 15, 15);
    self.Personal_cell_label2.font = [UIFont systemFontOfSize:14];
    self.Personal_cell_label2.textColor = [UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1];
    self.Personal_cell_view2.frame = CGRectMake(0, 40, 320, 5);
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
