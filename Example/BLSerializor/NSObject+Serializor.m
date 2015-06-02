//
//  NSObject+Serializor.m
//  NSObject-Serialize
//
//  Created by LiMing on 15/6/3.
//  Copyright (c) 2015年 ipconfiger. All rights reserved.
//

#import "NSObject+Serializor.h"
#import "objc/runtime.h"

@implementation NSObject (Serializor)

-(NSArray*) propertys{
    unsigned int outCount = 0;
    objc_property_t *properties = class_copyPropertyList(self.class, &outCount);
    NSMutableArray *propertyArry = [[NSMutableArray alloc] initWithCapacity:outCount];
    for (int i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        NSString *propName = [NSString stringWithUTF8String:property_getName(property)];
        [propertyArry addObject:propName];
    }
    return [propertyArry copy];
}

-(NSDictionary *) fromNSObject{
    return [self dictionaryWithValuesForKeys:[self propertys]];
}


-(id) fromDictionary:(NSDictionary*)dictionary
{
    [self setValuesForKeysWithDictionary:dictionary];
    return self;
}

@end
