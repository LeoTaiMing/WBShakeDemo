//
//  ZZRHapticFeedbackManager.m
//  HapticFeedbackDemo
//
//  Created by LeoTai on 2021/1/9.
//

#import "ZZRHapticFeedbackManager.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation ZZRHapticFeedbackManager

#pragma mark -
#pragma mark - UINotificationFeedbackGenerator

+ (void)executeSuccessFeedback
{
    if (@available(iOS 10.0, *)) {
        UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
        [generator notificationOccurred:UINotificationFeedbackTypeSuccess];
    }
}

+ (void)executeWarningFeedback
{
    if (@available(iOS 10.0, *)) {
        UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
        [generator notificationOccurred:UINotificationFeedbackTypeWarning];
    }
}

+ (void)excuteErrorFeedback
{
    if (@available(iOS 10.0, *)) {
        UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
        [generator notificationOccurred:UINotificationFeedbackTypeError];
    }
}

#pragma mark -
#pragma mark - UIImpactFeedbackGenerator

+ (void)excuteLightFeedback
{
    if (@available(iOS 10.0, *)) {
        UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleLight];
        [generator prepare];
        [generator impactOccurred];
    }
}

+ (void)excuteMediumFeedback
{
    if (@available(iOS 10.0, *)) {
        UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleMedium];
        [generator prepare];
        [generator impactOccurred];
    }
}

+ (void)excuteHeavyFeedback
{
    if (@available(iOS 10.0, *)) {
        UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleHeavy];
        [generator prepare];
        [generator impactOccurred];
    }
}

+ (void)excuteSoftFeedback
{
    if (@available(iOS 13.0, *)) {
        UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleSoft];
        [generator prepare];
        [generator impactOccurred];
    }
}

+ (void)excuteRigidFeedback
{
    if (@available(iOS 13.0, *)) {
        UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleRigid];
        [generator prepare];
        [generator impactOccurred];
    }
}

#pragma mark -
#pragma mark - UISelectionFeedbackGenerator


+ (void)excuteSelectionFeedback
{
    if (@available(iOS 10.0, *)) {
        UISelectionFeedbackGenerator *generator = [[UISelectionFeedbackGenerator alloc] init];
        [generator selectionChanged];
    }
}

#pragma mark -
#pragma mark - AudioServicesPlaySystemSound

+ (void)wbAudioServicesPlaySystemSoundVibrate
{
    AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate, nil);
    //未来即将弃用
    //AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);  //4095
}

+ (void)wbAudioServicesPlaySystemSound1519
{
    AudioServicesPlaySystemSoundWithCompletion(1519, nil);
    //AudioServicesPlaySystemSound(1519);  // 'Peek' feedback (weak boom)
}

+ (void)wbAudioServicesPlaySystemSound1520
{
    AudioServicesPlaySystemSoundWithCompletion(1520, nil);
    //AudioServicesPlaySystemSound(1520);  // 'Pop' feedback (strong boom)
}

+ (void)wbAudioServicesPlaySystemSound1521
{
    AudioServicesPlaySystemSoundWithCompletion(1521, nil);
    //AudioServicesPlaySystemSound(1521);  // 'Cancelled' feedback (three sequential weak booms)
}

+ (void)wbAudioServicesPlaySystemSound1102
{
    AudioServicesPlaySystemSoundWithCompletion(1102, nil);
    //AudioServicesPlaySystemSound(1102);  // 'Try Again' feedback (week boom then strong boom)
}

+ (void)wbAudioServicesPlaySystemSound1011
{
    AudioServicesPlaySystemSoundWithCompletion(1011, nil);
    //AudioServicesPlaySystemSound(1011);  // 'Failed' feedback (three sequential strong booms)
}

@end
