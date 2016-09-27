//
//  listModel.h
//  fgxScrollViewAndTableView
//
//  Created by 123 on 16/9/27.
//  Copyright © 2016年 123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface listModel : NSObject

@property (nonatomic,strong) NSString * icon;
@property (nonatomic,strong) NSString * title;
@property (nonatomic,strong) NSString * price;
@property (nonatomic,strong) NSString * detail;

-(void)setDictionary:(NSDictionary *)dic;

@end
