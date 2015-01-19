//
//  ViewController.swift
//  PoliceSketch
//
//  Created by Michael Reining on 1/19/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var eyesImageView: UIImageView!
    @IBOutlet weak var noseImageView: UIImageView!
    @IBOutlet weak var mouthImageView: UIImageView!
    @IBOutlet weak var nextEyeButton: UIButton!
    @IBOutlet weak var previousEyeButton: UIButton!
    @IBOutlet weak var nextNoseButton: UIButton!
    @IBOutlet weak var previousNoseButton: UIButton!
    @IBOutlet weak var nextMouthButton: UIButton!
    @IBOutlet weak var previousMouthButton: UIButton!

    @IBAction func previousButtonPressed(sender: AnyObject) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var sketch = PoliceSketch()
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

