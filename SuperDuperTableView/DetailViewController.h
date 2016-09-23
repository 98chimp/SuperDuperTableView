//
//  DetailViewController.h
//  SuperDuperTableView
//
//  Created by Shahin on 2016-09-22.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Horse.h"

@interface DetailViewController : UIViewController

@property Horse *horse;

@property (weak, nonatomic) IBOutlet UIImageView *horseImageView;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@end
