//
//  ViewController.m
//  VKActivity
//
//  Created by Igor on 1/7/15.
//  Copyright (c) 2015 Igor Fedorchuk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupUI];
}

#pragma mark - Actions

- (IBAction)shareButtonPressed:(id)sender
{
    
}

#pragma mark - Private

- (void)setupUI
{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"article_ic_share"] style:UIBarButtonItemStylePlain target:self action:@selector(shareButtonPressed:)];
}

@end
