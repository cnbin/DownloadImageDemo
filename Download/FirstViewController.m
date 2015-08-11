//
//  FirstViewController.m
//  Download
//
//  Created by Apple on 8/11/15.
//  Copyright (c) 2015 华讯网络投资有限公司. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view.
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(40 ,70, 200, 300)];
    UIImage *img = [UIImage imageWithData:[singleManager sharedInstance].shareData];
    NSLog(@"[singleManager sharedInstance].shareData is %@",[singleManager sharedInstance].shareData);
    imageView.image = img;
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
