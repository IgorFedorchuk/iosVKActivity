//
//  ViewController.m
//  VKActivity
//
//  Created by Igor on 1/7/15.
//  Copyright (c) 2015 Igor Fedorchuk. All rights reserved.
//

#import "ViewController.h"
#import "VKSdk.h" 

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
    NSArray *items = @[[UIImage imageNamed:@"article_ic_video_play"], @"Check out information about VK SDK" , [NSURL URLWithString:@"https://vk.com/dev/ios_sdk"]];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:@[[VKActivity new]]];
    
    [activityViewController setValue:@"VK SDK" forKey:@"subject"];
    if (VK_SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0"))
    {
        UIPopoverPresentationController *popover = activityViewController.popoverPresentationController;
        popover.sourceView = self.view;
        popover.barButtonItem = self.navigationItem.rightBarButtonItem;
    }
    
    [self presentViewController:activityViewController animated:YES completion:^{
        
    }];
}

#pragma mark - Private

- (void)setupUI
{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"article_ic_share"] style:UIBarButtonItemStylePlain target:self action:@selector(shareButtonPressed:)];
}

@end
