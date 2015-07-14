//
//  ImageDetailViewController.m
//  ImageGallery
//
//  Created by ricardo antonio cacho on 2015-07-14.
//  Copyright (c) 2015 ricardo antonio cacho. All rights reserved.
//

#import "ImageDetailViewController.h"
@interface ImageDetailViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageDetailed;

@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.imageDetailed.image = self.imageToDetail;
    
}

@end
