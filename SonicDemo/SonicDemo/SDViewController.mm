//
//  SDViewController.m
//  SonicDemo
//
//  Created by Alex Cannon on 9/23/14.
//  Copyright (c) 2014 Philadelphia Game Lab. All rights reserved.
//

#import "SDViewController.h"

@interface SDViewController ()

@end

@implementation SDViewController
@synthesize audioObj1, audioObj2, audioObj3, audioObj4, audioObj5, audioObj6, audioObj7, audioObj8;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Sonic::createWorld();
    // 45 degree elevation
    // audioObj1 = Sonic::addAudioObject("input1mono.wav", -1*.7071, 0, .7071);
    // 60 degree elevation
    // audioObj1 = Sonic::addAudioObject("input1mono.wav", -1*.866, 0, .866);
    // audioObj2 = Sonic::addAudioObject("3m40stest.wav", 0, 0, 0);
    
    
    audioObj1 = Sonic::addAudioObject("wibble.wav", 0, 1, 0);
    audioObj2 = Sonic::addAudioObject("wuffle.wav", 0, 1, 0);
    audioObj3 = Sonic::addAudioObject("boom.wav", 0, 1, 0);
    audioObj4 = Sonic::addAudioObject("dingding.wav", 0, 1, 0);
    audioObj5 = Sonic::addAudioObject("knock_woodpecker.wav", 0, 1, 0);
    audioObj6 = Sonic::addAudioObject("fx.wav", 0, 1, 0);
    //audioObj7 = Sonic::addAudioObject("skrape.wav", 0, 1, 0);
    //audioObj8 = Sonic::addAudioObject("knock_woodpecker.wav", 0, 0, 0);
    
    Sonic::setPlayerBearing(0);
    Sonic::setPlayerLocation(0, 0, 0);
    Sonic::startPlaying();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    //self.customAudioUnitInstance->play();
    // Sonic::startPlaying();
}

- (IBAction)click2:(id)sender {
    //self.customAudioUnitInstance->stop();
    Sonic::stopPlaying();
}

CustomAudioUnit* Sonic::cau = nullptr;


@end
