//
//  FirstViewController.m
//  mismeet
//
//  Created by 方俊 on 15-4-4.
//  Copyright (c) 2015年 sunloc. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"test"];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithWhite:0.1 alpha:1];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    
    UIBarButtonItem *leftButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(onClick:)];
    self.navigationItem.leftBarButtonItem = leftButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) onClick:(id) sender{
    SecondViewController *svc = [SecondViewController new];
    [self.navigationController pushViewController:svc animated:YES];
}
@end
