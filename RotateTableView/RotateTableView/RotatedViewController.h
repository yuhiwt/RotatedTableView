//
//  RotateViewController.h
//  RotateTableView
//
//  Created by Yuhei IWATA on 2014/05/11.
//  Copyright (c) 2014年 YI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RotatedViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
