//
//  AppDelegate.m
//  WBShakeDemo
//
//  Created by LeoTai on 2021/1/8.
//

#import "AppDelegate.h"
#import "WBShakeDemoViewController.h"

@interface AppDelegate ()

@property (strong, nonatomic) WBShakeDemoViewController *viewController;

@property (strong, nonatomic) UINavigationController *navController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
        
    self.viewController = [[WBShakeDemoViewController alloc] init];
    self.navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    self.navController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.window setRootViewController:self.navController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
