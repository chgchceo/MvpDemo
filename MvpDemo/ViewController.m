//
//  ViewController.m
//  MvpDemo
//
//  Created by 程广成 on 2024/7/24.
//

#import "ViewController.h"
#import "HeaderView.h"

#import "Presenter.h"

@interface ViewController ()<UsrViewProtocol>

@property(nonatomic)HeaderView *headerView;
@property(nonatomic,strong)Presenter *pt;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    [self initView];
    
    self.pt = [[Presenter alloc] init];
    [self.pt bindView:self];
    [self.pt bindData];
    self.headerView.delegate = self.pt;
}

- (void)initView{
    
    self.headerView = [[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:self options:nil] lastObject];
    [self.view addSubview:self.headerView];
    self.headerView.frame = CGRectMake(0, 100, 375, 200);
    
}

- (void)setNameString:(nonnull NSString *)name withDes:(nonnull NSString *)des{
    
    self.headerView.nameLabel.text = name;
    self.headerView.megLab.text = des;
    
}


@end
