//
//  RotateViewController.m
//  RotateTableView
//
//  Created by Yuhei IWATA on 2014/05/11.
//  Copyright (c) 2014年 YI. All rights reserved.
//

#import "RotatedViewController.h"

@interface RotatedViewController ()

@end

@implementation RotatedViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // データソースとデリゲートの設定
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    // テーブルビューを中心位置を変更
    self.tableView.center =  CGPointMake(self.tableView.frame.origin.x + self.tableView.frame.size.height / 2, self.tableView.frame.origin.y + self.tableView.frame.size.width / 2);
    
    // テーブルビューを回転
    self.tableView.transform = CGAffineTransformMakeRotation(-M_PI / 2);
    
}

# pragma mark UITableView's DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //コンテンツを逆回転
    cell.contentView.transform = CGAffineTransformMakeRotation(M_PI / 2);
    return cell;
}

@end
