//
//  ZZRHapticFeedbackManager.h
//  HapticFeedbackDemo
//
//  Created by LeoTai on 2021/1/9.

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZZRHapticFeedbackManager : NSObject

#pragma mark -
#pragma mark - UINotificationFeedbackGenerator

+ (void)executeSuccessFeedback;
+ (void)executeWarningFeedback;
+ (void)excuteErrorFeedback;

#pragma mark -
#pragma mark - UIImpactFeedbackGenerator

+ (void)excuteLightFeedback;
+ (void)excuteMediumFeedback;
+ (void)excuteHeavyFeedback;
+ (void)excuteSoftFeedback;
+ (void)excuteRigidFeedback;

#pragma mark -
#pragma mark - UISelectionFeedbackGenerator

+ (void)excuteSelectionFeedback;

#pragma mark -
#pragma mark - AudioServicesPlaySystemSound

+ (void)wbAudioServicesPlaySystemSoundVibrate;
+ (void)wbAudioServicesPlaySystemSound1519;
+ (void)wbAudioServicesPlaySystemSound1520;
+ (void)wbAudioServicesPlaySystemSound1521;
+ (void)wbAudioServicesPlaySystemSound1102;
+ (void)wbAudioServicesPlaySystemSound1011;

@end
