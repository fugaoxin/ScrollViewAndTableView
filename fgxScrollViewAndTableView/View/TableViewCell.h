//
//  TableViewCell.h
//  fgxScrollViewAndTableView
//
//  Created by 123 on 16/9/27.
//  Copyright © 2016年 123. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "listModel.h"

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

-(void)setDataModel:(listModel *)model;

@end
