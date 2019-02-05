//
//  TextFieldDelegateProxy.h
//  NSProxyDemo
//
//  Created by Mark Cornelisse on 04/02/2019.
//  Copyright © 2019 Mark Cornelisse. All rights reserved.
//

@import UIKit;

@class DataModel;

NS_ASSUME_NONNULL_BEGIN

@interface TextFieldDelegateProxy : NSProxy <UITextFieldDelegate>

@property (nonatomic, strong) NSObject<UITextFieldDelegate> *viewController;
@property (nonatomic, strong) NSObject<UITextFieldDelegate> *dataModel;

- (instancetype)initWithViewController:(UIViewController *)viewController andDataModel:(DataModel *)dateModel;

@end

NS_ASSUME_NONNULL_END
