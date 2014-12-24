//
//  ViewController.m
//  Choose Your Adventure
//
//  Created by Patrick Emmerich on 12/24/14.
//  Copyright (c) 2014 Patrick Emmerich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize webView = _webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _webView.scrollView.bounces = NO;
    _webView.delegate = self;
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"src/index" ofType:@"html"];
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:htmlFile isDirectory:NO]]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    //return YES;
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
            interfaceOrientation == UIInterfaceOrientationLandscapeRight );
}

@end