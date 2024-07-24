//
//  HeaderView.m
//  MvpDemo
//
//  Created by 程广成 on 2024/7/24.
//

#import "HeaderView.h"

@implementation HeaderView





- (IBAction)buttAc:(id)sender {
    
    self.nameLabel.text = @"lily";
    self.megLab.text = @"how are you";
    [self.delegate changeName:@"lily" withDes:@"how are you"];
    
}


@end
