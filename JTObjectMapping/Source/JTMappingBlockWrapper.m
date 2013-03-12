//
//  JTMappingBlockWrapper.m
//  Timehop
//
//  Created by Benny Wong on 8/20/12.
//  Copyright (c) 2012 Timehop. All rights reserved.
//

#import "JTMappingBlockWrapper.h"

@implementation JTMappingBlockWrapper

@synthesize mapperBlock = _mapperBlock;
@synthesize key = _key;
@synthesize targetClass = _targetClass;
@synthesize mapping = _mapping;


+ (JTMappingBlockWrapper *)mappingWithKey:(NSString *)key withBlock:(JTMapperBlock)block {
    JTMappingBlockWrapper *wrapper = [[JTMappingBlockWrapper alloc] init];
    wrapper.mapperBlock = block;
    wrapper.key = key;
    return [wrapper autorelease];
}

- (id<JTMappings>)execute:(id)obj {
  return self.mapperBlock(self.key ,obj);
}

- (void)dealloc {
    self.mapperBlock = nil;
    self.key = nil;
    self.mapping = nil;
    [super dealloc];
}

@end
