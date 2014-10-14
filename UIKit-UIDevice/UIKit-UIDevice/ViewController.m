//
//  ViewController.m
//  UIKit-UIDevice
//
//  Created by 王钱钧 on 14-10-13.
//  Copyright (c) 2014年 王钱钧. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIDevice *_currentDevice;
    NSUUID *_uuid;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getTheDeviceInformation];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)getTheDeviceInformation
{
    _currentDevice = [UIDevice currentDevice];
    _uuid = _currentDevice.identifierForVendor;
    
    NSLog(@"device.multitaskingSupported = %d", _currentDevice.multitaskingSupported);
    NSLog(@"device name is [%@]",_currentDevice.name);
    NSLog(@"device systemName is [%@]",_currentDevice.systemName);
    NSLog(@"device systemVersion is [%@]",_currentDevice.systemVersion);
    NSLog(@"device model is [%@]",_currentDevice.model);
    NSLog(@"device localizedModel is [%@]",_currentDevice.localizedModel);
    NSLog(@"device userInterfaceIdiom is [%ld]",_currentDevice.userInterfaceIdiom);
    NSLog(@"device uuid is [%@]",_uuid.UUIDString);
    NSLog(@"device orientation is [%ld]", _currentDevice.orientation);
    NSLog(@"device generatesDeviceOrientationNotifications is [%d]", _currentDevice.generatesDeviceOrientationNotifications);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
