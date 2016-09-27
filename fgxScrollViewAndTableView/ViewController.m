//
//  ViewController.m
//  fgxScrollViewAndTableView
//
//  Created by 123 on 16/9/27.
//  Copyright © 2016年 123. All rights reserved.
//

#import "ViewController.h"
#import "EGScrollView.h"
#import "TableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView * tableView;
@property (nonatomic,strong) NSArray * dataArray;
@property (nonatomic,strong) NSArray * photoArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setTingData];
    [self setTingTableView];
}

-(void)setTingData{
    self.photoArray=[NSArray arrayWithObjects:@"image0",@"image1",@"image2",@"image3", nil];
    NSString * file=[[NSBundle mainBundle] pathForResource:@"bookData" ofType:@"plist"];
    self.dataArray=[[NSArray alloc] initWithContentsOfFile:file];
}

#pragma mark - 设置tableView
-(void)setTingTableView{
    self.tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-20) style:UITableViewStylePlain];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    self.tableView.rowHeight=90;
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"cellID"];
    [self.view addSubview:self.tableView];
    
    EGScrollView * ScrollView=[[EGScrollView alloc] initWithFrame:CGRectMake(0, 0, 0, 200)];
    self.tableView.tableHeaderView=ScrollView;
    //pageCount这个参数必须设置
    ScrollView.pageCount = (int)self.photoArray.count;
    ScrollView.autoScroll = YES;
    ScrollView.showPageControl=YES;
    for (int i=0; i<self.photoArray.count; i++) {
        [ScrollView setImage:[UIImage imageNamed:self.photoArray[i]] atIndex:i];
    }
}

#pragma mark tableViewDelegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    listModel * model=[[listModel alloc] init];
    [model setDictionary:self.dataArray[indexPath.row]];
    [cell setDataModel:model];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
