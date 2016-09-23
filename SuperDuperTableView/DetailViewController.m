//
//  DetailViewController.m
//  SuperDuperTableView
//
//  Created by Shahin on 2016-09-22.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
}

- (void)configureView
{
    self.horseImageView.image = [UIImage imageNamed:self.horse.imageName];
    self.descriptionTextView.text = self.horse.habitatDescription;
    self.title = self.horse.name;
}

@end
