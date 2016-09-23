//
//  HorseTableViewCell.h
//  SuperDuperTableView
//
//  Created by Shahin on 2016-09-22.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorseTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *horseImageView;
@property (weak, nonatomic) IBOutlet UILabel *horseNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *horseSepciesLabel;

@end
