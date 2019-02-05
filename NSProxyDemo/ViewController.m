//
//  ViewController.m
//  NSProxyDemo
//
//  Created by Mark Cornelisse on 04/02/2019.
//  Copyright © 2019 Mark Cornelisse. All rights reserved.
//

#import "ViewController.h"
#import "TextFieldDelegateProxy.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textInputField;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;

@property (strong, nonatomic) TextFieldDelegateProxy *textInputFieldDelegate;
@property (strong, nonatomic) IBOutlet DataModel *dataModel;

@end

@implementation ViewController

- (IBAction)clearButtonPressed:(UIButton *)sender {
    
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *currentString = textField.text;
    NSString *finalString = [currentString stringByReplacingCharactersInRange:range withString:string];
    NSUInteger finalStringCount = finalString.length;
    if (finalStringCount > 0) {
        _clearButton.hidden = NO;
    } else {
        _clearButton.hidden = YES;
    }
    return YES;
}

#pragma mark - UIViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    
    _textInputFieldDelegate = [[TextFieldDelegateProxy alloc] initWithViewController:self andDataModel:self.dataModel];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textInputField.delegate = _textInputFieldDelegate;
}

#pragma mark - UIResponder

#pragma mark - NSObject

@end
