//
//  ViewController.m
//  ios1
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"YourName";
    NSString *message;

    if ([yourName length] == 0) {
        yourName = @"World";
    }

    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    } else {
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }

    self.messageLabel.text = message;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *secondVC = segue.destinationViewController;
        secondVC.surname = self.surnameTextField.text;
        secondVC.delegate = self;
    }
}

- (void)didUpdateSurname:(NSString *)surname {
    self.surnameTextField.text = surname;
}

@end
