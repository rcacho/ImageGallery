//
//  ViewController.m
//  ImageGallery
//
//  Created by ricardo antonio cacho on 2015-07-14.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *lighthouse1 = [[UIImageView alloc] initWithFrame:CGRectZero];
    UIImageView *lighthouse2 = [[UIImageView alloc] initWithFrame:CGRectZero];
    UIImageView *lighthouse3 = [[UIImageView alloc] initWithFrame:CGRectZero];
    
    
    
    lighthouse1.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    lighthouse2.image = [UIImage imageNamed:@"Lighthouse-night"];
    lighthouse3.image = [UIImage imageNamed:@"Lighthouse"];
    
    [self.scrollView addSubview:lighthouse1];
    [self.scrollView addSubview:lighthouse2];
    [self.scrollView addSubview:lighthouse3];
    
    
    lighthouse1.userInteractionEnabled = YES;
    lighthouse1.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse1
                                                          attribute:NSLayoutAttributeLeftMargin
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.scrollView
                                                          attribute:NSLayoutAttributeLeftMargin
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse1
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.scrollView
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse1
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:nil
                                                                  attribute:NSLayoutAttributeNotAnAttribute
                                                                 multiplier:1.0
                                                                   constant:300.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse1
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:500.0]];
    lighthouse2.userInteractionEnabled = YES;
    lighthouse2.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse2
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:lighthouse1
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:100.0]];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse2
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:300.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse2
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:500.0]];
    
    lighthouse3.userInteractionEnabled = YES;
    lighthouse3.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse3
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:lighthouse2
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:200.0]];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse3
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:300.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:lighthouse3
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:500.0]];

    

    self.scrollView.contentSize = CGSizeMake(500, 1200);
    
    
    self.scrollView.pagingEnabled = YES;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
