//
//  GuestureViewController.swift
//  PoliceSketch
//
//  Created by Michael Reining on 1/19/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class GuestureViewController: UIViewController {
    var sketch = PoliceSketch()
    @IBOutlet weak var eyesImageView: UIImageView!
    @IBOutlet weak var noseImageView: UIImageView!
    @IBOutlet weak var mouthImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        eyesImageView.image = UIImage(named: sketch.eyeImages[sketch.currentEyeImage])
        noseImageView.image = UIImage(named: sketch.noseImages[sketch.currentNoseImage])
        mouthImageView.image = UIImage(named: sketch.mouthImages[sketch.currentMouthImage])
        println("Good so far")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
