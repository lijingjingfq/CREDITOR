//
//  AppDelegate.m
//  CREDITOR
//
//  Created by apple on 15/8/25.
//  Copyright (c) 2015年 ZhongFuTong. All rights reserved.
//

#import "AppDelegate.h"
#import "LJJTabBarVC.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window = window;
    [window makeKeyAndVisible];
    [self welcomeToMySoftware];
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
#pragma mark-欢迎界面
-(void)welcomeToMySoftware
{
    if (![[NSUserDefaults standardUserDefaults] boolForKey:ISFIRST]) {
        UIScrollView*scroll=[[UIScrollView alloc]initWithFrame:[UIScreen mainScreen ].bounds];
        for (NSInteger i=0; i<3; i++) {
            UIImageView*imageView=[[UIImageView alloc]initWithFrame:CGRectMake(i*[UIScreen mainScreen ].bounds.size.width ,0, [UIScreen mainScreen ].bounds.size.width,[UIScreen mainScreen ].bounds.size.height)];
            imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"f%ld",i+1]];
            if (i==2) {
                imageView.userInteractionEnabled=YES;
                UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
                btn.frame=CGRectMake(0, [UIScreen mainScreen ].bounds.size.height-60, 150, 40);
                btn.center=CGPointMake([UIScreen mainScreen ].bounds.size.width/2,[UIScreen mainScreen].bounds.size.height-40);
                [btn addTarget:self action:@selector(welcomeBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
                [btn setBackgroundColor:[UIColor redColor]];
                btn.layer.cornerRadius=4;
                [btn setTitle:@"点击进入软件" forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                [imageView addSubview:btn];
            }
            [scroll addSubview:imageView];
        }
        scroll.contentSize=CGSizeMake([UIScreen mainScreen ].bounds.size.width*3, 0);
        scroll.showsHorizontalScrollIndicator=NO;
        scroll.bounces=NO;
        scroll.pagingEnabled=YES;
        [self.window addSubview:scroll];
    }else
    {
        [self welcomeBtnClicked:nil];
    }
}
-(void)welcomeBtnClicked:(UIButton*)sender
{
    LJJTabBarVC*tab=[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"LJJTabBarVC"];
    self.window.rootViewController=tab;
   
    
}

@end
