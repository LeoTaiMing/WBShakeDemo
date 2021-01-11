//
//  WBShakeDemoViewController.m
//  WBShakeDemo
//
//  Created by LeoTai on 2021/1/8.
//

#import "WBShakeDemoViewController.h"
#import "WBShakeLongViewController.h"
#import "WBShakeOneViewController.h"
#import "WBShakeTwoViewController.h"
#import "WBShakeThreeViewController.h"

@interface WBShakeDemoViewController ()

@property(nonatomic, strong)UIButton* btnLong;
@property(nonatomic, strong)UILabel* longLabel;

@property(nonatomic, strong)UIButton* btnOne;
@property(nonatomic, strong)UILabel* oneLabel;

@property(nonatomic, strong)UIButton* btnTwo;
@property(nonatomic, strong)UILabel* twoLabel;

@property(nonatomic, strong)UIButton* btnThree;
@property(nonatomic, strong)UILabel* threeLabel;

@end

@implementation WBShakeDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.view addSubview:self.btnLong];
    [self.view addSubview:self.btnOne];
    [self.view addSubview:self.btnTwo];
    [self.view addSubview:self.btnThree];
    
    [self.view addSubview:self.longLabel];
    [self.view addSubview:self.oneLabel];
    [self.view addSubview:self.twoLabel];
    [self.view addSubview:self.threeLabel];
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    CGFloat width = self.view.frame.size.width;
    self.btnLong.frame = CGRectMake(50, 100, width - 100, 50);
    self.longLabel.frame = CGRectMake(50, 150, width - 100, 90);
    self.btnOne.frame = CGRectMake(50, 250, width - 100, 50);
    self.oneLabel.frame = CGRectMake(50, 300, width - 100, 90);
    self.btnTwo.frame = CGRectMake(50, 400, width - 100, 50);
    self.twoLabel.frame = CGRectMake(50, 450, width - 100, 60);
    self.btnThree.frame = CGRectMake(50, 550, width - 100, 50);
    self.threeLabel.frame = CGRectMake(50, 600, width - 100, 60);
}

- (void)btnLongClicked {
    WBShakeLongViewController* vc = [[WBShakeLongViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btnOneClicked {
    WBShakeOneViewController* vc = [[WBShakeOneViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btnTwoClicked {
    WBShakeTwoViewController* vc = [[WBShakeTwoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btnThreeClicked {
    WBShakeThreeViewController* vc = [[WBShakeThreeViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (UIButton *)btnLong {
    if (!_btnLong) {
        _btnLong = [[UIButton alloc] init];
        _btnLong.backgroundColor = [UIColor yellowColor];
        [_btnLong setTitle:@"长震动 1种" forState:UIControlStateNormal];
        _btnLong.titleLabel.font = [UIFont systemFontOfSize:20];
        [_btnLong setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_btnLong addTarget:self action:@selector(btnLongClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btnLong;
}

- (UIButton *)btnOne {
    if (!_btnOne) {
        _btnOne = [[UIButton alloc] init];
        _btnOne.backgroundColor = [UIColor yellowColor];
        [_btnOne setTitle:@"短震动一 4种" forState:UIControlStateNormal];
        _btnOne.titleLabel.font = [UIFont systemFontOfSize:20];
        [_btnOne setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_btnOne addTarget:self action:@selector(btnOneClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btnOne;
}

- (UIButton *)btnTwo {
    if (!_btnTwo) {
        _btnTwo = [[UIButton alloc] init];
        _btnTwo.backgroundColor = [UIColor yellowColor];
        [_btnTwo setTitle:@"短震动二 7种" forState:UIControlStateNormal];
        _btnTwo.titleLabel.font = [UIFont systemFontOfSize:20];
        [_btnTwo setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_btnTwo addTarget:self action:@selector(btnTwoClicked) forControlEvents:UIControlEventTouchUpInside];

    }
    return _btnTwo;
}

- (UIButton *)btnThree {
    if (!_btnThree) {
        _btnThree = [[UIButton alloc] init];
        _btnThree.backgroundColor = [UIColor yellowColor];
        [_btnThree setTitle:@"短震动三 2种" forState:UIControlStateNormal];
        _btnThree.titleLabel.font = [UIFont systemFontOfSize:20];
        [_btnThree setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_btnThree addTarget:self action:@selector(btnThreeClicked) forControlEvents:UIControlEventTouchUpInside];

    }
    return _btnThree;
}

- (UILabel *)longLabel {
    if (!_longLabel) {
        _longLabel = [[UILabel alloc] init];
        _longLabel.text = @"支持iPhone基本机型，支持iOS9\n注：设置中关闭了振动功能，此震动会失效。";
        _longLabel.numberOfLines = 3;
        _longLabel.backgroundColor = [UIColor whiteColor];
        _longLabel.font = [UIFont systemFontOfSize:15];
        _longLabel.textColor = [UIColor blackColor];
    }
    return _longLabel;
}

- (UILabel *)oneLabel {
    if (!_oneLabel) {
        _oneLabel = [[UILabel alloc] init];
        _oneLabel.text = @"支持iPhone 6s及其以上机型\n注：可能会涉及私有属性，影响iOS审核，请谨慎选择。";
        _oneLabel.numberOfLines = 3;
        _oneLabel.backgroundColor = [UIColor whiteColor];
        _oneLabel.font = [UIFont systemFontOfSize:15];
        _oneLabel.textColor = [UIColor blackColor];
    }
    return _oneLabel;
}

- (UILabel *)twoLabel {
    if (!_twoLabel) {
        _twoLabel = [[UILabel alloc] init];
        _twoLabel.text = @"支持iPhone 7及其以上机型，iOS10及其以上版本";
        _twoLabel.numberOfLines = 2;
        _twoLabel.backgroundColor = [UIColor whiteColor];
        _twoLabel.font = [UIFont systemFontOfSize:15];
        _twoLabel.textColor = [UIColor blackColor];
    }
    return _twoLabel;
}

- (UILabel *)threeLabel {
    if (!_threeLabel) {
        _threeLabel = [[UILabel alloc] init];
        _threeLabel.text = @"支持iOS13及其以上版本";
        _threeLabel.numberOfLines = 2;
        _threeLabel.backgroundColor = [UIColor whiteColor];
        _threeLabel.font = [UIFont systemFontOfSize:15];
        _threeLabel.textColor = [UIColor blackColor];
    }
    return _threeLabel;
}

@end
