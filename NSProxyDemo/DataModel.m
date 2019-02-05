//
//  DataModel.m
//  NSProxyDemo
//
//  Created by Mark Cornelisse on 04/02/2019.
//  Copyright © 2019 Mark Cornelisse. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (void)save {
    NSLog(@"Data saved");
}

- (void)clear {
    self.text = @"";
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *currentString = textField.text;
    NSString *finalString = [currentString stringByReplacingCharactersInRange:range withString:string];
    _text = finalString;
    return YES;
}

#pragma mark - NSObject

- (instancetype)init {
    self = [super init];
    if (self) {
        _text = @"";
    }
    return self;
}

@end
