//
//  SecondViewController.m
//  ios1
//

#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.modifiedSurnameTextField.text = self.surname;
}

- (IBAction)saveAndReturn {
    if ([self.delegate respondsToSelector:@selector(didUpdateSurname:)]) {
        [self.delegate didUpdateSurname:self.modifiedSurnameTextField.text];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
