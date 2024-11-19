//
//  SecondViewController.h
//  ios1
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>
- (void)didUpdateSurname:(NSString *)surname;
@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameTextField;
@property NSString *surname;
@property (nonatomic, weak) id<SecondViewControllerDelegate> delegate;

- (IBAction)saveAndReturn;

@end
