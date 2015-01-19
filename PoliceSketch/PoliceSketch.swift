//
//  PoliceSketch.swift
//  PoliceSketch
//
//  Created by Michael Reining on 1/19/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

class PoliceSketch {
    var currentEyeImage: Int = 0
    var eyeImages = [String]()
    var currentNoseImage: Int = 0
    var noseImages = [String]()
    var currentMouthImage = 0
    var mouthImages = [String]()
    init() {
        for image in 1...5 {
            var eyeImageName = "eyes_" + String(image)
            self.eyeImages.append(eyeImageName)
            self.currentEyeImage = Int(arc4random_uniform(UInt32((self.eyeImages.count - 1))))
            var noseImageName = "nose_" + String(image)
            self.noseImages.append(noseImageName)
            self.currentNoseImage = Int(arc4random_uniform(UInt32((self.noseImages.count - 1))))
            var mouthImageName = "mouth_" + String(image)
            self.mouthImages.append(mouthImageName)
            self.currentMouthImage = Int(arc4random_uniform(UInt32((self.mouthImages.count - 1))))
        }
    }
    
    
    //MARK: Previous / Next Search Functions
    // Search Eyes
    func nextEyeImage() {
        var nextImage = self.currentEyeImage + 1
        if nextImage < self.eyeImages.count {
            self.currentEyeImage = nextImage
        } else {
            self.currentEyeImage = 0
        }
    }
    
    func previousEyeImage() {
        var previousImage = currentEyeImage - 1
        if previousImage < 0 {
            self.currentEyeImage = self.eyeImages.count - 1
        } else {
            self.currentEyeImage = previousImage
        }
    }
    // Search Nose
    func nextNoseImage() {
        var nextImage = self.currentNoseImage + 1
        if nextImage < self.noseImages.count {
            self.currentNoseImage = nextImage
        } else {
            self.currentNoseImage = 0
        }
    }
    
    func previousNoseImage() {
        var previousImage = currentNoseImage - 1
        if previousImage < 0 {
            self.currentNoseImage = self.noseImages.count - 1
        } else {
            self.currentNoseImage = previousImage
        }
    }
    // Search Mouth
    func nextMouthImage() {
        var nextImage = self.currentMouthImage + 1
        if nextImage < self.mouthImages.count {
            self.currentMouthImage = nextImage
        } else {
            self.currentMouthImage = 0
        }
    }
    
    func previousMouthImage() {
        var previousImage = currentMouthImage - 1
        if previousImage < 0 {
            self.currentMouthImage = self.mouthImages.count - 1
        } else {
            self.currentMouthImage = previousImage
        }
    }
    
}