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

    @IBOutlet weak var heartImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 /*
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "loginFacebook" {
                let  = segue.destinationViewController as!
            }
        }
                
        performSegueWithIdentifier("loginFacebook", sender: AnyObject?)
*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func vibrateOnTap(sender: AnyObject) {
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
}

