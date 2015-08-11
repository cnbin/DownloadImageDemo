//
//  ViewController.m
//  Download
//
//  Created by Apple on 8/11/15.
//  Copyright (c) 2015 华讯网络投资有限公司. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *strURL = [[NSString alloc] initWithFormat:@"http://192.168.40.10/IOSUPLOAD/asihttp.png"];
    
    NSURL *url = [NSURL URLWithString:[strURL URLEncodedString]];
    
    __weak ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
    [request setCompletionBlock:^{
        
        NSData *data  = [request responseData];
        [singleManager sharedInstance].shareData =data;
             
    }];
    [request setFailedBlock:^{
        NSError *error = [request error];
        NSLog(@"%@", [error localizedDescription]);
        
    }];
    [request startAsynchronous];
    
    textButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    textButton.frame=CGRectMake(20, 40, 280, 30);
    [textButton setTitle:@"接收" forState:UIControlStateNormal];
    [textButton setBackgroundColor:[UIColor greenColor]];
    [textButton.layer setBorderWidth:1.0];
    
    [textButton.layer setMasksToBounds:YES];
    [textButton.layer setCornerRadius:10.0];
    textButton.tag=1;
    [textButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:textButton];

       
}

-(void)buttonAction:(UIButton *)button{
    
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:[[FirstViewController alloc] init]] animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
