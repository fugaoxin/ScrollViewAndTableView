//
//  TableViewCell.m
//  fgxScrollViewAndTableView
//
//  Created by 123 on 16/9/27.
//  Copyright © 2016年 123. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
//    self.photoView.backgroundColor=[UIColor greenColor];
//    self.nameLabel.backgroundColor=[UIColor redColor];
//    self.priceLabel.backgroundColor=[UIColor yellowColor];
//    self.descriptionLabel.backgroundColor=[UIColor blueColor];
}

-(void)setDataModel:(listModel *)model{
    self.photoView.image=[UIImage imageNamed:model.icon];
    NSLog(@"model==%@",model.title);
    self.nameLabel.text=model.title;
    self.priceLabel.text=model.price;
    self.descriptionLabel.text=model.detail;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
