//
//  PersonTableViewCell.m
//  Share
//
//  Created by JackVictorTyrantLee on 2017/7/31.
//  Copyright © 2017年 JackVictorTyrantLee. All rights reserved.
//

#import "PersonTableViewCell.h"

@implementation PersonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.imageviewbtn = [UIButton buttonWithType: UIButtonTypeCustom];
        [self.contentView addSubview:self.imageviewbtn];
        
        self.homelable1 = [[UILabel alloc] init];
        [self.contentView addSubview:self.homelable1];
        
        self.homelable2 = [[UILabel alloc] init];
        [self.contentView addSubview:self.homelable2];
        
        self.homelable3 = [[UILabel alloc] init];
        [self.contentView addSubview:self.homelable3];
        
        self.homelable4 = [[UILabel alloc] init];
        [self.contentView addSubview:self.homelable4];
        
        self.homelable5 = [[UILabel alloc] init];
        [self.contentView addSubview:self.homelable5];
        
        self.homeimage1 = [UIButton buttonWithType: UIButtonTypeCustom];
        [self.contentView addSubview:self.homeimage1];
        
        self.homeimage2 = [UIButton buttonWithType: UIButtonTypeCustom];
        [self.contentView addSubview:self.homeimage2];
        
        self.homeimage3 = [UIButton buttonWithType: UIButtonTypeCustom];
        [self.contentView addSubview:self.homeimage3];
        
        self.homeimage4 = [UIButton buttonWithType: UIButtonTypeCustom];
        [self.contentView addSubview:self.homeimage4];
        
        self.homeimage5 = [UIButton buttonWithType: UIButtonTypeCustom];
        [self.contentView addSubview:self.homeimage5];
        
        self.homeimage6 = [UIButton buttonWithType: UIButtonTypeCustom];
        [self.contentView addSubview:self.homeimage6];
        
    }
    return self;
}


-(void) layoutSubviews
{
    self.imageviewbtn.frame = CGRectMake(5, 0, 145, 120);
    self.homelable1.frame = CGRectMake(170, 10, 130, 20);
    self.homelable1.font = [UIFont fontWithName:@" sans-serif;font-family" size:14];
    self.homelable2.frame = CGRectMake(278, 20, 30, 20);
    self.homelable2.font = [UIFont fontWithName:@"Courier" size:11];
    self.homelable3.frame = CGRectMake(170, 40, 140, 15);
    self.homelable3.font = [UIFont fontWithName:@"AmericanTypewriter" size:11];
    self.homelable4.frame = CGRectMake(170, 55, 140, 15);
    self.homelable4.font = [UIFont fontWithName:@"AmericanTypewriter" size:11];
    self.homelable5.frame = CGRectMake(170, 70, 140, 15);
    self.homelable5.font = [UIFont fontWithName:@"AmericanTypewriter" size:11];
    self.homeimage1.frame = CGRectMake(170, 90, 15, 15);
    self.homeimage2.frame = CGRectMake(185, 90, 25, 15);
    self.homeimage2.titleLabel.font = [UIFont  fontWithName:@"AmericanTypewriter" size:11];
    [self.homeimage2 setTitleColor:[UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1] forState:UIControlStateNormal];
    
    self.homeimage3.frame = CGRectMake(215, 91, 20, 15);
    self.homeimage4.frame = CGRectMake(240, 90, 25, 15);
    self.homeimage4.titleLabel.font = [UIFont  fontWithName:@"AmericanTypewriter" size:11];
    [self.homeimage4 setTitleColor:[UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1] forState:UIControlStateNormal] ;
    
    self.homeimage5.frame = CGRectMake(270, 90, 20, 15);
    self.homeimage6.frame = CGRectMake(290, 90, 25, 15);
    self.homeimage6.titleLabel.font = [UIFont  fontWithName:@"AmericanTypewriter" size:11];
    [self.homeimage6 setTitleColor:[UIColor colorWithRed:65/255.0 green:151/255.0 blue:209/255.0 alpha:1] forState:UIControlStateNormal];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
