//
//  Horse.m
//  SuperDuperTableView
//
//  Created by Shahin on 2016-09-22.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import "Horse.h"

@implementation Horse

-(instancetype)initWithName:(NSString *)name Species:(NSString *)species HabitatDescription:(NSString *)habitatDescription AndImageName:(NSString *)imageName
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.species = species;
        self.habitatDescription = habitatDescription;
        self.imageName = imageName;
    }
    
    return self;
}

@end
