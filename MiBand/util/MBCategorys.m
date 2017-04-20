//
//  MPCatergorys.m
//  MiBandApiSample
//
//  Created by TracyYih on 15/1/6.
//  Copyright (c) 2015年 esoftmobile.com. All rights reserved.
//

#import "MBCategorys.h"
#import "MBDataReader.h"

@implementation CBUUID (MBUUIDString)

- (NSString *)stringValue {
    if ([self respondsToSelector:@selector(UUIDString)]) {
        return self.UUIDString;
    }
    NSData *data = self.data;
    MBDataReader *reader = [[MBDataReader alloc] initWithData:data];
    NSString *string = [reader readString:data.length];
    return string;
}

@end

@implementation CBPeripheral (MBIdentifier)

- (NSString *)peripheralIdentifier {
    return [self.identifier UUIDString];
}

@end