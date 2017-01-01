//
//  ViewController.m
//  ArchiverEasyDemo
//
//  Created by 杨晴贺 on 01/01/2017.
//  Copyright © 2017 silence. All rights reserved.
//

#import "ViewController.h"
#import "NSKeyedArchiver+Key.h"
#import "NSKeyedUnarchiver+Key.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = @[@"1",@"2",@"3"] ;
    
    // 默认存入沙盒Document/DefaultArchive文件夹中
    [NSKeyedArchiver archiveRootObject:array forKey:@"kk"] ;
    
    // 自定义文件夹路径
    NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"custom"] ;
    [NSKeyedArchiver archiveRootObject:array forKey:@"kk" WithFolderPath:path] ;
    
    // 读取
    NSArray *a1 = [NSKeyedUnarchiver unarchiveObjectForKey:@"kk"] ;
    NSLog(@"%@",a1) ;
    
    NSArray *a2 = [NSKeyedUnarchiver unarchiveObjectForKey:@"kk" WithPath:path] ;
    NSLog(@"%@",a2) ;
}


@end
