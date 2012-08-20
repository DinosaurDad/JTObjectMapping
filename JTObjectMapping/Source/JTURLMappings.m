//
//  JTURLMappings.m
//  Timehop
//
//  Created by Benny Wong on 8/20/12.
//  Copyright (c) 2012 Timehop. All rights reserved.
//

#import "JTURLMappings.h"

@implementation JTURLMappings

@synthesize key;

+ (id <JTURLMappings>)mappingWithKey:(NSString *)key {
    JTURLMappings *map = [[JTURLMappings alloc] init];
    map.key = key;
    return [map autorelease];
}

- (void)dealloc {
    self.key = nil;
    [super dealloc];
}

@end
