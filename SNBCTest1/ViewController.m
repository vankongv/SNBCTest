//
//  ViewController.m
//  SNBCTest1
//
//  Created by Vankong Veng on 17/6/22.
//

#import "ViewController.h"
#import "POSSDK.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"test");
    DEVICEHANDLE _handle;
    NSLog(@"Init");
    _handle = Init("POS");
    NSLog(@"OpenNetPort");
    int result = OpenNetPort(_handle, "10.15.0.48", 9100, 0, 0);
    NSLog(@"OpenNetPort done %d", result);

    result = SelectPaperType(_handle, 0);
    NSLog(@"SelectPaperType done %d", result);
//    result = PrintSetMode(_handle, 0);
//    NSLog(@"PrintSetMode done %d", result);
//    ApplicationUnit(_handle, 1);
    
//    result = FeedLine(_handle);

    NSLog(@"App starting");

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
