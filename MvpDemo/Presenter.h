//
//  Presenter.h
//  MvpDemo
//
//  Created by 程广成 on 2024/7/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN



@protocol UsrViewProtocol <NSObject>

@optional
//设置数据
- (void)setNameString:(NSString *)name withDes:(NSString *)des;


//修改数据
- (void)changeName:(NSString *)name withDes:(NSString *)des;


@end


@interface Presenter : NSObject<UsrViewProtocol>


- (void)bindView:(id <UsrViewProtocol>)view;

- (void)bindData;






@end

NS_ASSUME_NONNULL_END
