//
//  HeaderView.h
//  MvpDemo
//
//  Created by 程广成 on 2024/7/24.
//

#import <UIKit/UIKit.h>
#import "Presenter.h"

NS_ASSUME_NONNULL_BEGIN

@interface HeaderView : UIView

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@property (weak, nonatomic) IBOutlet UILabel *megLab;

@property(nonatomic,weak)id<UsrViewProtocol>delegate;


@end

NS_ASSUME_NONNULL_END
