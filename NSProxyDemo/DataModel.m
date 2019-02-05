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
    _text = nil;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *currentString = textField.text;
    NSString *finalString = [currentString stringByReplacingCharactersInRange:range withString:string];
    NSUInteger finalStringCount = finalString.length;
    if (finalStringCount > 0) {
//        _clearButton.hidden = NO;
    } else {
//        _clearButton.hidden = YES;
    }
    return YES;
}

#pragma mark - NSObject

@end
