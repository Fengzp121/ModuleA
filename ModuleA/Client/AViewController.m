//
//  AViewController.m
//  ModuleA
//
//  Created by ffzp on 2021/6/24.
//

#import "AViewController.h"
#import "TestRequest.h"
#import <SDWebImage/SDWebImage.h>

@interface AViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"i am %@",NSStringFromClass([self class]));
    CGFloat imageWH = [UIScreen mainScreen].bounds.size.width - 100;
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, imageWH, imageWH)];
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:_imageView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100 + imageWH + 30, imageWH - 100, 50);
    [button setTitle:@"请选择自己的🐶" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(testApi) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)testApi{
    TestRequest *req = [TestRequest new];
    __weak __typeof(self)weakSelf = self;
    [req startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"request.responseString:%@",request.responseString);
        NSString *imageUrlStr = [request.responseJSONObject valueForKey:@"message"];
        [weakSelf.imageView sd_setImageWithURL:[NSURL URLWithString:imageUrlStr]];
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"request.error:%@",request.responseString);
    }];
}

@end
