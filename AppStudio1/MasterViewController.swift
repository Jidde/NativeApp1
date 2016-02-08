//
//  MasterViewController.swift
//  AppStudio1
//
//  Created by Jidde Koekoek on 01/02/16.
//  Copyright © 2016 Jidde Koekoek. All rights reserved.
//

import UIKit
import AudioToolbox.AudioServices

class MasterViewController: UIViewController {

    // ImageView for Heart image
    // Label for time till Valentine
    
    @IBOutlet weak var heartImageView: UIImageView!
    @IBOutlet weak var valentijnLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set text for label to the correct remaining time
        let text = Countdown.countdown()
        self.valentijnLabel.text = text

        // Perform modal segue to Facebook login screen
        
        dispatch_async(dispatch_get_main_queue()) {
            self.performSegueWithIdentifier("loginFacebook", sender: self)
       }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Vibrate phone when Heart image is tapped
    @IBAction func vibrateOnTap(sender: AnyObject) {
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }

    
}

