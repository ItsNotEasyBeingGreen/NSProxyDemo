//
//  DataModel.h
//  NSProxyDemo
//
//  Created by Mark Cornelisse on 04/02/2019.
//  Copyright © 2019 Mark Cornelisse. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface DataModel : NSObject <UITextFieldDelegate>

@property (nonatomic, strong) NSString *text;

- (void)save;
- (void)clear;

@end

NS_ASSUME_NONNULL_END
