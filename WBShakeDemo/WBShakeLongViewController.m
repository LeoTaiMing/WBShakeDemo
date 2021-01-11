//
//  WBShakeLongViewController.m
//  WBShakeDemo
//
//  Created by LeoTai on 2021/1/9.
//

#import "WBShakeLongViewController.h"
#import "ZZRHapticFeedbackManager.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define COLOR(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a/1.0]

@interface WBShakeLongViewController ()

@property (nonatomic ,strong) UILabel               *UINotificationFeedbackGeneratorLabel;
@property (nonatomic ,strong) UILabel               *UIImpactFeedbackGeneratorLabel;
@property (nonatomic ,strong) UILabel               *UISelectionFeedbackGeneratorLabel;

@property (nonatomic ,strong) UIButton              *successBtn;
@property (nonatomic ,strong) UIButton              *warningBtn;
@property (nonatomic ,strong) UIButton              *errorBtn;

@property (nonatomic ,strong) UIButton              *lightBtn;
@property (nonatomic ,strong) UIButton              *mediumBtn;
@property (nonatomic ,strong) UIButton              *heavyBtn;

@property (nonatomic ,strong) UIButton              *selectionBtn;

@end

@implementation WBShakeLongViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.UINotificationFeedbackGeneratorLabel = [[UILabel alloc] init];
    self.UINotificationFeedbackGeneratorLabel.frame = CGRectMake(0, 20 + 64, WIDTH, 30);
    self.UINotificationFeedbackGeneratorLabel.text = @"AudioServicesPlaySystemSound";
    self.UINotificationFeedbackGeneratorLabel.textAlignment = NSTextAlignmentCenter;
    self.UINotificationFeedbackGeneratorLabel.textColor = COLOR(50, 50, 50, 1);
    self.UINotificationFeedbackGeneratorLabel.font = [UIFont systemFontOfSize:17];
    
    self.successBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.successBtn.backgroundColor = COLOR(118, 218, 84, 1);
    self.successBtn.frame = CGRectMake(WIDTH/2-150, 80 + 64, 80, 80);
    self.successBtn.layer.borderWidth = 1;
    self.successBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.successBtn.layer.cornerRadius = 40;
    [self.successBtn setTitle:@"Vibrate" forState:UIControlStateNormal];
    [self.successBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.successBtn addTarget:self action:@selector(successBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.warningBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.warningBtn.backgroundColor = COLOR(251, 157, 33, 1);
    self.warningBtn.frame = CGRectMake(WIDTH/2-40, 80, 80, 80);
    self.warningBtn.layer.borderWidth = 1;
    self.warningBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.warningBtn.layer.cornerRadius = 40;
    [self.warningBtn setTitle:@"1520" forState:UIControlStateNormal];
    [self.warningBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.warningBtn addTarget:self action:@selector(warningBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    self.errorBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.errorBtn.backgroundColor = COLOR(255, 87, 79, 1);
    self.errorBtn.frame = CGRectMake(WIDTH/2+70, 80, 80, 80);
    self.errorBtn.layer.borderWidth = 1;
    self.errorBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.errorBtn.layer.cornerRadius = 40;
    [self.errorBtn setTitle:@"1521" forState:UIControlStateNormal];
    [self.errorBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.errorBtn addTarget:self action:@selector(errorBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    self.lightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.lightBtn.backgroundColor = COLOR(147, 112, 219, 1);
    self.lightBtn.frame = CGRectMake(WIDTH/2-150, 80 + 80 + 40, 80, 80);
    self.lightBtn.layer.borderWidth = 1;
    self.lightBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.lightBtn.layer.cornerRadius = 40;
    [self.lightBtn setTitle:@"1102" forState:UIControlStateNormal];
    [self.lightBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.lightBtn addTarget:self action:@selector(lightBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    
    self.mediumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.mediumBtn.backgroundColor = COLOR(186, 85, 211, 1);
    self.mediumBtn.frame = CGRectMake(WIDTH/2-40, 80 + 80 + 40, 80, 80);
    self.mediumBtn.layer.borderWidth = 1;
    self.mediumBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.mediumBtn.layer.cornerRadius = 40;
    [self.mediumBtn setTitle:@"1011" forState:UIControlStateNormal];
    [self.mediumBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.mediumBtn addTarget:self action:@selector(mediumBtnClicked) forControlEvents:UIControlEventTouchUpInside];


    self.heavyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.heavyBtn.backgroundColor = COLOR(150, 150, 150, 1);
    self.heavyBtn.frame = CGRectMake(WIDTH/2 + 70, 80 + 80 + 40, 80, 80);
    self.heavyBtn.layer.borderWidth = 1;
    self.heavyBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.heavyBtn.layer.cornerRadius = 40;
    [self.heavyBtn setTitle:@"Vibrate" forState:UIControlStateNormal];
    [self.heavyBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.heavyBtn addTarget:self action:@selector(heavyBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.UINotificationFeedbackGeneratorLabel];
    [self.view addSubview:self.successBtn];
//    [self.view addSubview:self.warningBtn];
//    [self.view addSubview:self.errorBtn];
//    [self.view addSubview:self.lightBtn];
//    [self.view addSubview:self.mediumBtn];
//    [self.view addSubview:self.heavyBtn];
    
}

#pragma mark - events

- (void)successBtnClicked
{
    [ZZRHapticFeedbackManager wbAudioServicesPlaySystemSoundVibrate];
}

- (void)warningBtnClicked
{
    [ZZRHapticFeedbackManager wbAudioServicesPlaySystemSound1520];
}

- (void)errorBtnClicked
{
    [ZZRHapticFeedbackManager wbAudioServicesPlaySystemSound1521];
}

- (void)lightBtnClicked
{
    [ZZRHapticFeedbackManager wbAudioServicesPlaySystemSound1102];
}

- (void)mediumBtnClicked
{
    [ZZRHapticFeedbackManager wbAudioServicesPlaySystemSound1011];
}

- (void)heavyBtnClicked
{
    [ZZRHapticFeedbackManager wbAudioServicesPlaySystemSoundVibrate];
}

- (void)selectionBtnClicked
{
    [ZZRHapticFeedbackManager excuteSelectionFeedback];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
