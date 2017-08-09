//
//  Active_cell.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/8/2.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "Active_cell.h"

@implementation Active_cell
-(instancetype)  initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    if (self = [super  initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.Active_btn= [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:self.Active_btn];
        
        self.Active_label = [[UILabel alloc] init];
        [self.contentView addSubview:self.Active_label];
        
    }
    return self;
}

-(void) layoutSubviews
{
    self.Active_btn.frame = CGRectMake(0, 0, 300, 125);
    self.Active_label.frame = CGRectMake(0, 125, 310, 25);
    self.Active_label.font = [UIFont systemFontOfSize:10];
    
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
