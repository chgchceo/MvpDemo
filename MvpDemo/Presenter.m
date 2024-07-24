//
//  Presenter.m
//  MvpDemo
//
//  Created by 程广成 on 2024/7/24.
//

#import "Presenter.h"
#import "UserModel.h"

@interface Presenter ()


@property (nonatomic, strong) UserModel *usrModel;
@property (nonatomic, weak) id<UsrViewProtocol> bindView;


@end

@implementation Presenter




- (void)bindView:(id <UsrViewProtocol>)view{
    self.bindView = view;
}

- (void)bindData{
    
    self.usrModel = [[UserModel alloc] init];
    self.usrModel.name = @"jack";
    self.usrModel.des = @"哈哈，这是一个简介";
    [self.bindView setNameString:self.usrModel.name withDes:self.usrModel.des];
    
}


//修改数据
- (void)changeName:(NSString *)name withDes:(NSString *)des{
    
    self.usrModel.name = name;
    self.usrModel.des = des;
}





@end
