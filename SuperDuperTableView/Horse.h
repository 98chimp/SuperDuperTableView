//
//  Horse.h
//  SuperDuperTableView
//
//  Created by Shahin on 2016-09-22.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Horse : NSObject

@property NSString *name;
@property NSString *imageName;
@property NSString *species;
@property NSString *habitatDescription;


-(instancetype)initWithName:(NSString *)name Species:(NSString *)species HabitatDescription:(NSString *)habitatDescription AndImageName:(NSString *)imageName;

@end
