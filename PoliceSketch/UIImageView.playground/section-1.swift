// Playground - noun: a place where people can play

import Foundation
import UIKit



var str = "Hello, playground"

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
    
    
}

var currentSketch = PoliceSketch()

