//
//  ViewController.m
//  BlurMenu
//
//  Created by Ali Yılmaz on 05/02/14.
//  Copyright (c) 2014 Ali Yılmaz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    [self changeBackgroundImage];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 64, 220, 50);
    button.backgroundColor = [UIColor clearColor];
    [button setTitle:@"Open Menu" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:@"GillSans-Light" size:25.0f];
    [button addTarget:self action:@selector(showMenu) forControlEvents:UIControlEventTouchDown];
    
    UIButton *changeBackground = [UIButton buttonWithType:UIButtonTypeCustom];
    changeBackground.frame = CGRectMake(50, 120, 220, 50);
    changeBackground.backgroundColor = [UIColor clearColor];
    [changeBackground setTitle:@"Change Background" forState:UIControlStateNormal];
    [changeBackground setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    changeBackground.titleLabel.font = [UIFont fontWithName:@"GillSans-Light" size:15.0f];
    [changeBackground addTarget:self action:@selector(changeBackgroundImage) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
    [self.view addSubview:changeBackground];
}

- (void)showMenu {
    NSArray *items = [[NSArray alloc] initWithObjects:@"First Item", @"Second Item", @"Third Item", @"Fourth Item", nil];
    BlurMenu *menu = [[BlurMenu alloc] initWithItems:items parentView:self.view delegate:self];
    [menu show];
}

- (void)changeBackgroundImage {
    NSUInteger random = arc4random_uniform(3) + 1;
    NSString *backgroundImage = [NSString stringWithFormat:@"%lu.jpg", (unsigned long)random];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:backgroundImage]];
}

#pragma mark - BlurMenu Delegate
- (void)selectedItemAtIndex:(NSInteger)index {
    NSLog(@"Item selected at index %ld.", (long)index);
}

- (void)menuDidShow {
    NSLog(@"Menu appeared.");
}

- (void)menuDidHide {
    NSLog(@"Menu disappeared.");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
