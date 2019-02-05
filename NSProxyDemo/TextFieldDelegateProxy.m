//
//  TextFieldDelegateProxy.m
//  NSProxyDemo
//
//  Created by Mark Cornelisse on 04/02/2019.
//  Copyright © 2019 Mark Cornelisse. All rights reserved.
//

#import "TextFieldDelegateProxy.h"

@implementation TextFieldDelegateProxy

- (instancetype)initWithViewController:(NSObject<UITextFieldDelegate> *)viewController andDataModel:(NSObject<UITextFieldDelegate> *)dataModel {
    _viewController = viewController;
    _dataModel = dataModel;
    return self;
}

#pragma mark - NSProxy

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    NSLog(@"methodSignatureForSelector: %@", NSStringFromSelector(sel));
    return [self.dataModel methodSignatureForSelector:(SEL)sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    NSString *currentSelector = NSStringFromSelector(invocation.selector);
    if ([currentSelector isEqualToString:@"textField:shouldChangeCharactersInRange:replacementString:"]) {
        [invocation invokeWithTarget:self.viewController];
    }
    [invocation invokeWithTarget:self.dataModel];
}

@end
