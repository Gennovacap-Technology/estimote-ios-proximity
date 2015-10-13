//
//  AppDelegate.m
//  ProximityContentForMultK9C
//

#import "AppDelegate.h"

#import <EstimoteSDK/EstimoteSDK.h>

#import <Parse/Parse.h>

// Add the ESTBeaconManagerDelegate protocol
@interface AppDelegate () <ESTBeaconManagerDelegate>
// Add a property to hold the beacon manager
@property (nonatomic) ESTBeaconManager *beaconManager;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        [ESTConfig setupAppID:@"proximity-content-for-mult-k9c" andAppToken:@"d1763d2fdf4a3a29efa3b9cb3c64007c"];

    
        // Instantiate the beacon manager & set its delegate
        self.beaconManager = [ESTBeaconManager new];
        self.beaconManager.delegate = self;
        [self.beaconManager requestAlwaysAuthorization];
    
        // [Optional] Power your app with Local Datastore. For more info, go to
        [Parse enableLocalDatastore];
    
        // Initialize Parse.
        [Parse setApplicationId:@"bJcab8am3wFepDs3O2M9MgKHguzwS0gcHERlPqHV"
                  clientKey:@"GtiUtaSy1oVdmM5gzQVpUV8CumsrgUNP85oCYCYH"];
    
        // [Optional] Track statistics around application opens.
        [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
 
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

@end
