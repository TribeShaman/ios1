//
//  ViewController.h
//  ios1
//
//  Created by student on 08/10/2024.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;
-(IBAction)enter;
@end

