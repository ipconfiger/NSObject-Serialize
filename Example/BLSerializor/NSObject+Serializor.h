//
//  NSObject+Serializor.h
//  NSObject-Serialize
//
//  Created by LiMing on 15/6/3.
//  Copyright (c) 2015年 ipconfiger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Serializor)

-(NSMutableDictionary *) fromNSObject;

-(id) fromDictionary:(NSDictionary*)dictionary;

@end
