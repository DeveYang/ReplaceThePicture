//
//  ViewController.m
//  ReplaceThePicture
//
//  Created by apple on 16/1/25.
//  Copyright © 2016年 DeveYang. All rights reserved.
//

#import "ViewController.h"
#import "ImagePicker.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *changePictureBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _changePictureBtn.layer.borderWidth = 1;
    _changePictureBtn.layer.borderColor = [UIColor whiteColor].CGColor;
//    设置头像的圆角大小
    CGFloat diameter = _changePictureBtn.frame.size.width/2.0;
    _changePictureBtn.layer.cornerRadius = diameter;
    _changePictureBtn.layer.masksToBounds = YES;
}
- (IBAction)changePictureAction:(UIButton *)sender {
    /**
     *  更换头像需要封装的类方法
     *
     *  @param viewController 用于present UIImagePickerController对象
     *  @param allowsEditing  选择的图片是否允许编辑
     *  @param finishAction   选择完毕后回调获得选择的图片
     */
    [ImagePicker showImagePickerFromViewController:self allowsEditing:YES finishAction:^(UIImage *image) {
        [sender setBackgroundImage:image forState:UIControlStateNormal];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
