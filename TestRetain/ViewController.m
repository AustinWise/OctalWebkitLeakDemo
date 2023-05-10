//
//  ViewController.m
//  TestRetain
//
//  Created by Austin Wise on 5/9/23.
//

#import "ViewController.h"

#import <SafariServices/SFSafariViewController.h>

// Note that this
static SFSafariViewController* ctrl;

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)buttonTouch:(id)sender {
    UIViewController *controller = [UIApplication sharedApplication].keyWindow.rootViewController;
    NSURL* url = [[NSURL alloc] initWithString: @"https://news.ycombinator.com/item?id=35583228"];
    ctrl = [[SFSafariViewController alloc] initWithURL: url];
    [controller presentViewController:ctrl animated:YES completion: nil];
    // Uncomment the following line to fix the leak and
    // to stop the audio planning after the view is closed.
    // ctrl = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
