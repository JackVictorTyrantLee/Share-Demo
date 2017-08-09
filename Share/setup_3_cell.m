//
//  setup_3_cell.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "setup_3_cell.h"

@implementation setup_3_cell
-(instancetype)  initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    if (self = [super  initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.setup3_cell_label = [[UILabel alloc] init];
        [self.contentView addSubview:self.setup3_cell_label];
        
        self.setup3_cell_btn= [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:self.setup3_cell_btn];
        
        
        
    }
    return self;
}

-(void) layoutSubviews
{
    self.setup3_cell_label.frame = CGRectMake(40, 5, 150, 35);
    self.setup3_cell_label.font = [UIFont systemFontOfSize:12];
    self.setup3_cell_btn.frame = CGRectMake(260, 15, 15, 15);
    
    
    //    self.Presonal_cell_view.frame = CGRectMake(0, 40, 320, 5);
}
-(void)Presssetup3
{
    self.setup3_cell_btn.selected = !self.setup3_cell_btn.selected;
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
