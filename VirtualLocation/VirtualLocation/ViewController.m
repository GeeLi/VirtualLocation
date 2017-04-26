//
//  ViewController.m
//  VirtualLocation
//
//  Created by 李帅 on 2017/4/26.
//  Copyright © 2017年 company. All rights reserved.
//

#import "ViewController.h"
#import "JZLocationConverter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //第一步从高德地图上获取坐标
    //http://lbs.amap.com/console/show/picker
    
    
    //第二步把获取的坐标转换成Wgs坐标系统
    //漫展    30.160532,120.202513
    //肯德基   31.258249,121.49546
    
    CLLocation *loca = [[CLLocation alloc]initWithLatitude:30.160532 longitude:120.202513];
    CLLocationCoordinate2D c2d = [JZLocationConverter gcj02ToWgs84:loca.coordinate];
    NSLog(@"转换后： %f  %f",c2d.latitude,c2d.longitude);
    
    //第三步在.gpx中添加上一步地图转换后的坐标
    
    //运行到真机上（证书自己配置，没有的话用免费的，流程自行百度）

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
