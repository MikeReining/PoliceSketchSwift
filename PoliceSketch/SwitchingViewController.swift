//
//  SwitchingViewController.swift
//  CH6ViewSwitcher
//
//  Created by Michael Reining on 12/12/14.
//  Copyright (c) 2014 Little Coders. All rights reserved.
//

import UIKit

class SwitchingViewController: UIViewController {
    
    private var buttonViewController: ViewController!
    private var guestureViewController: GuestureViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonViewController = storyboard?.instantiateViewControllerWithIdentifier("ButtonVC") as ViewController
        buttonViewController.view.frame = view.frame
        switchViewController(from: nil, to: buttonViewController)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        if buttonViewController != nil && buttonViewController!.view.superview == nil {
            buttonViewController == nil
        }
        if guestureViewController != nil && guestureViewController!.view.superview == nil {
            guestureViewController == nil
        }
        
        
    }
    
    
    @IBAction func switchViews(sender: AnyObject) {
        // Create the new view controllers, if required
        if guestureViewController?.view.superview == nil {
            if guestureViewController == nil {
                guestureViewController = storyboard?.instantiateViewControllerWithIdentifier("GuestureVC") as GuestureViewController
            }
        } else if buttonViewController?.view.superview == nil {
            if buttonViewController == nil {
                buttonViewController = storyboard?.instantiateViewControllerWithIdentifier("ButtonVC") as ViewController
            }
        }
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.EaseInOut)
        
        // Switch view controllers
        
        if buttonViewController != nil && buttonViewController!.view.superview != nil {
            UIView.setAnimationTransition(.FlipFromRight, forView: view, cache: true)
            guestureViewController.view.frame = view.frame
            switchViewController(from: buttonViewController, to: guestureViewController)
        } else {
            UIView.setAnimationTransition(.FlipFromLeft, forView: view, cache: true)
            buttonViewController.view.frame = view.frame
            
            switchViewController(from: guestureViewController, to: buttonViewController)
        }
        UIView.commitAnimations()
        
    }

    
    private func switchViewController(from fromVC:UIViewController?, to toVC:UIViewController?) {
        if fromVC != nil {
            fromVC!.willMoveToParentViewController(nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParentViewController()
        }
        if toVC != nil {
            self.addChildViewController(toVC!)
            self.view.insertSubview(toVC!.view, atIndex: 0)
            toVC!.didMoveToParentViewController(self)
        }
    }
    
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
